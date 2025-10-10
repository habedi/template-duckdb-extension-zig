#include "duckdb_extension.h"
#include <string.h>

// This macro is crucial - it declares the external DuckDB API that will be provided at runtime
DUCKDB_EXTENSION_EXTERN

// Forward declare the Zig function
extern int64_t zig_add_numbers(int64_t a, int64_t b);

// Scalar function that adds two numbers together using Zig implementation
static void add_numbers_zig_function(duckdb_function_info info, duckdb_data_chunk input, duckdb_vector output) {
    idx_t input_size = duckdb_data_chunk_get_size(input);

    // Get input vectors
    duckdb_vector a_vec = duckdb_data_chunk_get_vector(input, 0);
    duckdb_vector b_vec = duckdb_data_chunk_get_vector(input, 1);

    // Get data pointers
    int64_t *a_data = (int64_t *)duckdb_vector_get_data(a_vec);
    int64_t *b_data = (int64_t *)duckdb_vector_get_data(b_vec);
    int64_t *result_data = (int64_t *)duckdb_vector_get_data(output);

    // Get validity masks
    uint64_t *a_validity = duckdb_vector_get_validity(a_vec);
    uint64_t *b_validity = duckdb_vector_get_validity(b_vec);

    if (a_validity || b_validity) {
        duckdb_vector_ensure_validity_writable(output);
        uint64_t *result_validity = duckdb_vector_get_validity(output);

        for (idx_t row = 0; row < input_size; row++) {
            if (duckdb_validity_row_is_valid(a_validity, row) &&
                duckdb_validity_row_is_valid(b_validity, row)) {
                // Call Zig implementation
                result_data[row] = zig_add_numbers(a_data[row], b_data[row]);
            } else {
                duckdb_validity_set_row_invalid(result_validity, row);
            }
        }
    } else {
        for (idx_t row = 0; row < input_size; row++) {
            result_data[row] = zig_add_numbers(a_data[row], b_data[row]);
        }
    }
}

// Extension version function
static void extension_version_function(duckdb_function_info info, duckdb_data_chunk input, duckdb_vector output) {
    idx_t input_size = duckdb_data_chunk_get_size(input);
    const char *version = "v1.0.0-zig";

    for (idx_t row = 0; row < input_size; row++) {
        duckdb_vector_assign_string_element_len(output, row, version, strlen(version));
    }
}

// Extension initialization
DUCKDB_EXTENSION_ENTRYPOINT(duckdb_connection conn, duckdb_extension_info info, struct duckdb_extension_access *access) {
    // Register add_numbers_zig function
    duckdb_scalar_function add_func = duckdb_create_scalar_function();
    duckdb_scalar_function_set_name(add_func, "add_numbers_zig");

    duckdb_logical_type bigint_type = duckdb_create_logical_type(DUCKDB_TYPE_BIGINT);
    duckdb_scalar_function_add_parameter(add_func, bigint_type);
    duckdb_scalar_function_add_parameter(add_func, bigint_type);
    duckdb_scalar_function_set_return_type(add_func, bigint_type);
    duckdb_destroy_logical_type(&bigint_type);

    duckdb_scalar_function_set_function(add_func, add_numbers_zig_function);

    if (duckdb_register_scalar_function(conn, add_func) == DuckDBError) {
        access->set_error(info, "Failed to register add_numbers_zig function");
        duckdb_destroy_scalar_function(&add_func);
        return false;
    }
    duckdb_destroy_scalar_function(&add_func);

    // Register extension_version function
    duckdb_scalar_function ver_func = duckdb_create_scalar_function();
    duckdb_scalar_function_set_name(ver_func, "extension_version");

    duckdb_logical_type varchar_type = duckdb_create_logical_type(DUCKDB_TYPE_VARCHAR);
    duckdb_scalar_function_set_return_type(ver_func, varchar_type);
    duckdb_destroy_logical_type(&varchar_type);

    duckdb_scalar_function_set_function(ver_func, extension_version_function);

    if (duckdb_register_scalar_function(conn, ver_func) == DuckDBError) {
        access->set_error(info, "Failed to register extension_version function");
        duckdb_destroy_scalar_function(&ver_func);
        return false;
    }
    duckdb_destroy_scalar_function(&ver_func);

    return true;
}

