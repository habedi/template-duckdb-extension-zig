const __root = @This();
pub const __builtin = @import("std").zig.c_translation.builtins;
pub const __helpers = @import("std").zig.c_translation.helpers;
pub const __u_char = u8;
pub const __u_short = c_ushort;
pub const __u_int = c_uint;
pub const __u_long = c_ulong;
pub const __int8_t = i8;
pub const __uint8_t = u8;
pub const __int16_t = c_short;
pub const __uint16_t = c_ushort;
pub const __int32_t = c_int;
pub const __uint32_t = c_uint;
pub const __int64_t = c_long;
pub const __uint64_t = c_ulong;
pub const __int_least8_t = __int8_t;
pub const __uint_least8_t = __uint8_t;
pub const __int_least16_t = __int16_t;
pub const __uint_least16_t = __uint16_t;
pub const __int_least32_t = __int32_t;
pub const __uint_least32_t = __uint32_t;
pub const __int_least64_t = __int64_t;
pub const __uint_least64_t = __uint64_t;
pub const __quad_t = c_long;
pub const __u_quad_t = c_ulong;
pub const __intmax_t = c_long;
pub const __uintmax_t = c_ulong;
pub const __dev_t = c_ulong;
pub const __uid_t = c_uint;
pub const __gid_t = c_uint;
pub const __ino_t = c_ulong;
pub const __ino64_t = c_ulong;
pub const __mode_t = c_uint;
pub const __nlink_t = c_ulong;
pub const __off_t = c_long;
pub const __off64_t = c_long;
pub const __pid_t = c_int;
pub const __fsid_t = extern struct {
    __val: [2]c_int = @import("std").mem.zeroes([2]c_int),
};
pub const __clock_t = c_long;
pub const __rlim_t = c_ulong;
pub const __rlim64_t = c_ulong;
pub const __id_t = c_uint;
pub const __time_t = c_long;
pub const __useconds_t = c_uint;
pub const __suseconds_t = c_long;
pub const __suseconds64_t = c_long;
pub const __daddr_t = c_int;
pub const __key_t = c_int;
pub const __clockid_t = c_int;
pub const __timer_t = ?*anyopaque;
pub const __blksize_t = c_long;
pub const __blkcnt_t = c_long;
pub const __blkcnt64_t = c_long;
pub const __fsblkcnt_t = c_ulong;
pub const __fsblkcnt64_t = c_ulong;
pub const __fsfilcnt_t = c_ulong;
pub const __fsfilcnt64_t = c_ulong;
pub const __fsword_t = c_long;
pub const __ssize_t = c_long;
pub const __syscall_slong_t = c_long;
pub const __syscall_ulong_t = c_ulong;
pub const __loff_t = __off64_t;
pub const __caddr_t = [*c]u8;
pub const __intptr_t = c_long;
pub const __socklen_t = c_uint;
pub const __sig_atomic_t = c_int;
pub const int_least8_t = __int_least8_t;
pub const int_least16_t = __int_least16_t;
pub const int_least32_t = __int_least32_t;
pub const int_least64_t = __int_least64_t;
pub const uint_least8_t = __uint_least8_t;
pub const uint_least16_t = __uint_least16_t;
pub const uint_least32_t = __uint_least32_t;
pub const uint_least64_t = __uint_least64_t;
pub const int_fast8_t = i8;
pub const int_fast16_t = c_long;
pub const int_fast32_t = c_long;
pub const int_fast64_t = c_long;
pub const uint_fast8_t = u8;
pub const uint_fast16_t = c_ulong;
pub const uint_fast32_t = c_ulong;
pub const uint_fast64_t = c_ulong;
pub const intmax_t = __intmax_t;
pub const uintmax_t = __uintmax_t;
pub const ptrdiff_t = c_long;
pub const wchar_t = c_int;
pub const max_align_t = extern struct {
    __aro_max_align_ll: c_longlong = 0,
    __aro_max_align_ld: c_longdouble = 0,
};
pub const DUCKDB_TYPE_INVALID: c_int = 0;
pub const DUCKDB_TYPE_BOOLEAN: c_int = 1;
pub const DUCKDB_TYPE_TINYINT: c_int = 2;
pub const DUCKDB_TYPE_SMALLINT: c_int = 3;
pub const DUCKDB_TYPE_INTEGER: c_int = 4;
pub const DUCKDB_TYPE_BIGINT: c_int = 5;
pub const DUCKDB_TYPE_UTINYINT: c_int = 6;
pub const DUCKDB_TYPE_USMALLINT: c_int = 7;
pub const DUCKDB_TYPE_UINTEGER: c_int = 8;
pub const DUCKDB_TYPE_UBIGINT: c_int = 9;
pub const DUCKDB_TYPE_FLOAT: c_int = 10;
pub const DUCKDB_TYPE_DOUBLE: c_int = 11;
pub const DUCKDB_TYPE_TIMESTAMP: c_int = 12;
pub const DUCKDB_TYPE_DATE: c_int = 13;
pub const DUCKDB_TYPE_TIME: c_int = 14;
pub const DUCKDB_TYPE_INTERVAL: c_int = 15;
pub const DUCKDB_TYPE_HUGEINT: c_int = 16;
pub const DUCKDB_TYPE_UHUGEINT: c_int = 32;
pub const DUCKDB_TYPE_VARCHAR: c_int = 17;
pub const DUCKDB_TYPE_BLOB: c_int = 18;
pub const DUCKDB_TYPE_DECIMAL: c_int = 19;
pub const DUCKDB_TYPE_TIMESTAMP_S: c_int = 20;
pub const DUCKDB_TYPE_TIMESTAMP_MS: c_int = 21;
pub const DUCKDB_TYPE_TIMESTAMP_NS: c_int = 22;
pub const DUCKDB_TYPE_ENUM: c_int = 23;
pub const DUCKDB_TYPE_LIST: c_int = 24;
pub const DUCKDB_TYPE_STRUCT: c_int = 25;
pub const DUCKDB_TYPE_MAP: c_int = 26;
pub const DUCKDB_TYPE_ARRAY: c_int = 33;
pub const DUCKDB_TYPE_UUID: c_int = 27;
pub const DUCKDB_TYPE_UNION: c_int = 28;
pub const DUCKDB_TYPE_BIT: c_int = 29;
pub const DUCKDB_TYPE_TIME_TZ: c_int = 30;
pub const DUCKDB_TYPE_TIMESTAMP_TZ: c_int = 31;
pub const DUCKDB_TYPE_ANY: c_int = 34;
pub const DUCKDB_TYPE_VARINT: c_int = 35;
pub const DUCKDB_TYPE_SQLNULL: c_int = 36;
pub const enum_DUCKDB_TYPE = c_uint;
pub const duckdb_type = enum_DUCKDB_TYPE;
pub const DuckDBSuccess: c_int = 0;
pub const DuckDBError: c_int = 1;
pub const enum_duckdb_state = c_uint;
pub const duckdb_state = enum_duckdb_state;
pub const DUCKDB_PENDING_RESULT_READY: c_int = 0;
pub const DUCKDB_PENDING_RESULT_NOT_READY: c_int = 1;
pub const DUCKDB_PENDING_ERROR: c_int = 2;
pub const DUCKDB_PENDING_NO_TASKS_AVAILABLE: c_int = 3;
pub const enum_duckdb_pending_state = c_uint;
pub const duckdb_pending_state = enum_duckdb_pending_state;
pub const DUCKDB_RESULT_TYPE_INVALID: c_int = 0;
pub const DUCKDB_RESULT_TYPE_CHANGED_ROWS: c_int = 1;
pub const DUCKDB_RESULT_TYPE_NOTHING: c_int = 2;
pub const DUCKDB_RESULT_TYPE_QUERY_RESULT: c_int = 3;
pub const enum_duckdb_result_type = c_uint;
pub const duckdb_result_type = enum_duckdb_result_type;
pub const DUCKDB_STATEMENT_TYPE_INVALID: c_int = 0;
pub const DUCKDB_STATEMENT_TYPE_SELECT: c_int = 1;
pub const DUCKDB_STATEMENT_TYPE_INSERT: c_int = 2;
pub const DUCKDB_STATEMENT_TYPE_UPDATE: c_int = 3;
pub const DUCKDB_STATEMENT_TYPE_EXPLAIN: c_int = 4;
pub const DUCKDB_STATEMENT_TYPE_DELETE: c_int = 5;
pub const DUCKDB_STATEMENT_TYPE_PREPARE: c_int = 6;
pub const DUCKDB_STATEMENT_TYPE_CREATE: c_int = 7;
pub const DUCKDB_STATEMENT_TYPE_EXECUTE: c_int = 8;
pub const DUCKDB_STATEMENT_TYPE_ALTER: c_int = 9;
pub const DUCKDB_STATEMENT_TYPE_TRANSACTION: c_int = 10;
pub const DUCKDB_STATEMENT_TYPE_COPY: c_int = 11;
pub const DUCKDB_STATEMENT_TYPE_ANALYZE: c_int = 12;
pub const DUCKDB_STATEMENT_TYPE_VARIABLE_SET: c_int = 13;
pub const DUCKDB_STATEMENT_TYPE_CREATE_FUNC: c_int = 14;
pub const DUCKDB_STATEMENT_TYPE_DROP: c_int = 15;
pub const DUCKDB_STATEMENT_TYPE_EXPORT: c_int = 16;
pub const DUCKDB_STATEMENT_TYPE_PRAGMA: c_int = 17;
pub const DUCKDB_STATEMENT_TYPE_VACUUM: c_int = 18;
pub const DUCKDB_STATEMENT_TYPE_CALL: c_int = 19;
pub const DUCKDB_STATEMENT_TYPE_SET: c_int = 20;
pub const DUCKDB_STATEMENT_TYPE_LOAD: c_int = 21;
pub const DUCKDB_STATEMENT_TYPE_RELATION: c_int = 22;
pub const DUCKDB_STATEMENT_TYPE_EXTENSION: c_int = 23;
pub const DUCKDB_STATEMENT_TYPE_LOGICAL_PLAN: c_int = 24;
pub const DUCKDB_STATEMENT_TYPE_ATTACH: c_int = 25;
pub const DUCKDB_STATEMENT_TYPE_DETACH: c_int = 26;
pub const DUCKDB_STATEMENT_TYPE_MULTI: c_int = 27;
pub const enum_duckdb_statement_type = c_uint;
pub const duckdb_statement_type = enum_duckdb_statement_type;
pub const DUCKDB_ERROR_INVALID: c_int = 0;
pub const DUCKDB_ERROR_OUT_OF_RANGE: c_int = 1;
pub const DUCKDB_ERROR_CONVERSION: c_int = 2;
pub const DUCKDB_ERROR_UNKNOWN_TYPE: c_int = 3;
pub const DUCKDB_ERROR_DECIMAL: c_int = 4;
pub const DUCKDB_ERROR_MISMATCH_TYPE: c_int = 5;
pub const DUCKDB_ERROR_DIVIDE_BY_ZERO: c_int = 6;
pub const DUCKDB_ERROR_OBJECT_SIZE: c_int = 7;
pub const DUCKDB_ERROR_INVALID_TYPE: c_int = 8;
pub const DUCKDB_ERROR_SERIALIZATION: c_int = 9;
pub const DUCKDB_ERROR_TRANSACTION: c_int = 10;
pub const DUCKDB_ERROR_NOT_IMPLEMENTED: c_int = 11;
pub const DUCKDB_ERROR_EXPRESSION: c_int = 12;
pub const DUCKDB_ERROR_CATALOG: c_int = 13;
pub const DUCKDB_ERROR_PARSER: c_int = 14;
pub const DUCKDB_ERROR_PLANNER: c_int = 15;
pub const DUCKDB_ERROR_SCHEDULER: c_int = 16;
pub const DUCKDB_ERROR_EXECUTOR: c_int = 17;
pub const DUCKDB_ERROR_CONSTRAINT: c_int = 18;
pub const DUCKDB_ERROR_INDEX: c_int = 19;
pub const DUCKDB_ERROR_STAT: c_int = 20;
pub const DUCKDB_ERROR_CONNECTION: c_int = 21;
pub const DUCKDB_ERROR_SYNTAX: c_int = 22;
pub const DUCKDB_ERROR_SETTINGS: c_int = 23;
pub const DUCKDB_ERROR_BINDER: c_int = 24;
pub const DUCKDB_ERROR_NETWORK: c_int = 25;
pub const DUCKDB_ERROR_OPTIMIZER: c_int = 26;
pub const DUCKDB_ERROR_NULL_POINTER: c_int = 27;
pub const DUCKDB_ERROR_IO: c_int = 28;
pub const DUCKDB_ERROR_INTERRUPT: c_int = 29;
pub const DUCKDB_ERROR_FATAL: c_int = 30;
pub const DUCKDB_ERROR_INTERNAL: c_int = 31;
pub const DUCKDB_ERROR_INVALID_INPUT: c_int = 32;
pub const DUCKDB_ERROR_OUT_OF_MEMORY: c_int = 33;
pub const DUCKDB_ERROR_PERMISSION: c_int = 34;
pub const DUCKDB_ERROR_PARAMETER_NOT_RESOLVED: c_int = 35;
pub const DUCKDB_ERROR_PARAMETER_NOT_ALLOWED: c_int = 36;
pub const DUCKDB_ERROR_DEPENDENCY: c_int = 37;
pub const DUCKDB_ERROR_HTTP: c_int = 38;
pub const DUCKDB_ERROR_MISSING_EXTENSION: c_int = 39;
pub const DUCKDB_ERROR_AUTOLOAD: c_int = 40;
pub const DUCKDB_ERROR_SEQUENCE: c_int = 41;
pub const DUCKDB_INVALID_CONFIGURATION: c_int = 42;
pub const enum_duckdb_error_type = c_uint;
pub const duckdb_error_type = enum_duckdb_error_type;
pub const DUCKDB_CAST_NORMAL: c_int = 0;
pub const DUCKDB_CAST_TRY: c_int = 1;
pub const enum_duckdb_cast_mode = c_uint;
pub const duckdb_cast_mode = enum_duckdb_cast_mode;
pub const idx_t = u64;
pub const duckdb_delete_callback_t = ?*const fn (data: ?*anyopaque) callconv(.c) void;
pub const duckdb_task_state = ?*anyopaque;
pub const duckdb_date = extern struct {
    days: i32 = 0,
    pub const duckdb_from_date = __root.duckdb_from_date;
    pub const duckdb_is_finite_date = __root.duckdb_is_finite_date;
    pub const duckdb_create_date = __root.duckdb_create_date;
    pub const date = __root.duckdb_from_date;
};
pub const duckdb_date_struct = extern struct {
    year: i32 = 0,
    month: i8 = 0,
    day: i8 = 0,
    pub const duckdb_to_date = __root.duckdb_to_date;
    pub const date = __root.duckdb_to_date;
};
pub const duckdb_time = extern struct {
    micros: i64 = 0,
    pub const duckdb_from_time = __root.duckdb_from_time;
    pub const duckdb_create_time = __root.duckdb_create_time;
    pub const time = __root.duckdb_from_time;
};
pub const duckdb_time_struct = extern struct {
    hour: i8 = 0,
    min: i8 = 0,
    sec: i8 = 0,
    micros: i32 = 0,
    pub const duckdb_to_time = __root.duckdb_to_time;
    pub const time = __root.duckdb_to_time;
};
pub const duckdb_time_tz = extern struct {
    bits: u64 = 0,
    pub const duckdb_from_time_tz = __root.duckdb_from_time_tz;
    pub const duckdb_create_time_tz_value = __root.duckdb_create_time_tz_value;
    pub const tz = __root.duckdb_from_time_tz;
    pub const value = __root.duckdb_create_time_tz_value;
};
pub const duckdb_time_tz_struct = extern struct {
    time: duckdb_time_struct = @import("std").mem.zeroes(duckdb_time_struct),
    offset: i32 = 0,
};
pub const duckdb_timestamp = extern struct {
    micros: i64 = 0,
    pub const duckdb_from_timestamp = __root.duckdb_from_timestamp;
    pub const duckdb_is_finite_timestamp = __root.duckdb_is_finite_timestamp;
    pub const duckdb_create_timestamp = __root.duckdb_create_timestamp;
    pub const duckdb_create_timestamp_tz = __root.duckdb_create_timestamp_tz;
    pub const timestamp = __root.duckdb_from_timestamp;
    pub const tz = __root.duckdb_create_timestamp_tz;
};
pub const duckdb_timestamp_s = extern struct {
    seconds: i64 = 0,
    pub const duckdb_is_finite_timestamp_s = __root.duckdb_is_finite_timestamp_s;
    pub const duckdb_create_timestamp_s = __root.duckdb_create_timestamp_s;
    pub const s = __root.duckdb_is_finite_timestamp_s;
};
pub const duckdb_timestamp_ms = extern struct {
    millis: i64 = 0,
    pub const duckdb_is_finite_timestamp_ms = __root.duckdb_is_finite_timestamp_ms;
    pub const duckdb_create_timestamp_ms = __root.duckdb_create_timestamp_ms;
    pub const ms = __root.duckdb_is_finite_timestamp_ms;
};
pub const duckdb_timestamp_ns = extern struct {
    nanos: i64 = 0,
    pub const duckdb_is_finite_timestamp_ns = __root.duckdb_is_finite_timestamp_ns;
    pub const duckdb_create_timestamp_ns = __root.duckdb_create_timestamp_ns;
    pub const ns = __root.duckdb_is_finite_timestamp_ns;
};
pub const duckdb_timestamp_struct = extern struct {
    date: duckdb_date_struct = @import("std").mem.zeroes(duckdb_date_struct),
    time: duckdb_time_struct = @import("std").mem.zeroes(duckdb_time_struct),
    pub const duckdb_to_timestamp = __root.duckdb_to_timestamp;
    pub const timestamp = __root.duckdb_to_timestamp;
};
pub const duckdb_interval = extern struct {
    months: i32 = 0,
    days: i32 = 0,
    micros: i64 = 0,
    pub const duckdb_create_interval = __root.duckdb_create_interval;
    pub const interval = __root.duckdb_create_interval;
};
pub const duckdb_hugeint = extern struct {
    lower: u64 = 0,
    upper: i64 = 0,
    pub const duckdb_hugeint_to_double = __root.duckdb_hugeint_to_double;
    pub const duckdb_create_hugeint = __root.duckdb_create_hugeint;
    pub const to_double = __root.duckdb_hugeint_to_double;
    pub const hugeint = __root.duckdb_create_hugeint;
};
pub const duckdb_uhugeint = extern struct {
    lower: u64 = 0,
    upper: u64 = 0,
    pub const duckdb_uhugeint_to_double = __root.duckdb_uhugeint_to_double;
    pub const duckdb_create_uhugeint = __root.duckdb_create_uhugeint;
    pub const duckdb_create_uuid = __root.duckdb_create_uuid;
    pub const to_double = __root.duckdb_uhugeint_to_double;
    pub const uhugeint = __root.duckdb_create_uhugeint;
    pub const uuid = __root.duckdb_create_uuid;
};
pub const duckdb_decimal = extern struct {
    width: u8 = 0,
    scale: u8 = 0,
    value: duckdb_hugeint = @import("std").mem.zeroes(duckdb_hugeint),
    pub const duckdb_decimal_to_double = __root.duckdb_decimal_to_double;
    pub const duckdb_create_decimal = __root.duckdb_create_decimal;
    pub const to_double = __root.duckdb_decimal_to_double;
    pub const decimal = __root.duckdb_create_decimal;
};
pub const duckdb_query_progress_type = extern struct {
    percentage: f64 = 0,
    rows_processed: u64 = 0,
    total_rows_to_process: u64 = 0,
};
const struct_unnamed_2 = extern struct {
    length: u32 = 0,
    prefix: [4]u8 = @import("std").mem.zeroes([4]u8),
    ptr: [*c]u8 = null,
};
const struct_unnamed_3 = extern struct {
    length: u32 = 0,
    inlined: [12]u8 = @import("std").mem.zeroes([12]u8),
};
const union_unnamed_1 = extern union {
    pointer: struct_unnamed_2,
    inlined: struct_unnamed_3,
};
pub const duckdb_string_t = extern struct {
    value: union_unnamed_1 = @import("std").mem.zeroes(union_unnamed_1),
    pub const duckdb_string_is_inlined = __root.duckdb_string_is_inlined;
    pub const duckdb_string_t_length = __root.duckdb_string_t_length;
    pub const duckdb_string_t_data = __root.duckdb_string_t_data;
    pub const inlined = __root.duckdb_string_is_inlined;
    pub const length = __root.duckdb_string_t_length;
    pub const data = __root.duckdb_string_t_data;
};
pub const duckdb_list_entry = extern struct {
    offset: u64 = 0,
    length: u64 = 0,
};
pub const duckdb_column = extern struct {
    deprecated_data: ?*anyopaque = null,
    deprecated_nullmask: [*c]bool = null,
    deprecated_type: duckdb_type = @import("std").mem.zeroes(duckdb_type),
    deprecated_name: [*c]u8 = null,
    internal_data: ?*anyopaque = null,
};
pub const struct__duckdb_vector = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_vector_get_column_type = __root.duckdb_vector_get_column_type;
    pub const duckdb_vector_get_data = __root.duckdb_vector_get_data;
    pub const duckdb_vector_get_validity = __root.duckdb_vector_get_validity;
    pub const duckdb_vector_ensure_validity_writable = __root.duckdb_vector_ensure_validity_writable;
    pub const duckdb_vector_assign_string_element = __root.duckdb_vector_assign_string_element;
    pub const duckdb_vector_assign_string_element_len = __root.duckdb_vector_assign_string_element_len;
    pub const duckdb_list_vector_get_child = __root.duckdb_list_vector_get_child;
    pub const duckdb_list_vector_get_size = __root.duckdb_list_vector_get_size;
    pub const duckdb_list_vector_set_size = __root.duckdb_list_vector_set_size;
    pub const duckdb_list_vector_reserve = __root.duckdb_list_vector_reserve;
    pub const duckdb_struct_vector_get_child = __root.duckdb_struct_vector_get_child;
    pub const duckdb_array_vector_get_child = __root.duckdb_array_vector_get_child;
    pub const get_column_type = __root.duckdb_vector_get_column_type;
    pub const get_data = __root.duckdb_vector_get_data;
    pub const get_validity = __root.duckdb_vector_get_validity;
    pub const ensure_validity_writable = __root.duckdb_vector_ensure_validity_writable;
    pub const assign_string_element = __root.duckdb_vector_assign_string_element;
    pub const assign_string_element_len = __root.duckdb_vector_assign_string_element_len;
    pub const child = __root.duckdb_list_vector_get_child;
    pub const size = __root.duckdb_list_vector_get_size;
    pub const reserve = __root.duckdb_list_vector_reserve;
};
pub const duckdb_vector = [*c]struct__duckdb_vector;
pub const duckdb_string = extern struct {
    data: [*c]u8 = null,
    size: idx_t = 0,
};
pub const duckdb_blob = extern struct {
    data: ?*anyopaque = null,
    size: idx_t = 0,
};
pub const duckdb_bit = extern struct {
    data: [*c]u8 = null,
    size: idx_t = 0,
    pub const duckdb_create_bit = __root.duckdb_create_bit;
    pub const bit = __root.duckdb_create_bit;
};
pub const duckdb_varint = extern struct {
    data: [*c]u8 = null,
    size: idx_t = 0,
    is_negative: bool = false,
    pub const duckdb_create_varint = __root.duckdb_create_varint;
    pub const varint = __root.duckdb_create_varint;
};
pub const duckdb_result = extern struct {
    deprecated_column_count: idx_t = 0,
    deprecated_row_count: idx_t = 0,
    deprecated_rows_changed: idx_t = 0,
    deprecated_columns: [*c]duckdb_column = null,
    deprecated_error_message: [*c]u8 = null,
    internal_data: ?*anyopaque = null,
    pub const duckdb_destroy_result = __root.duckdb_destroy_result;
    pub const duckdb_column_name = __root.duckdb_column_name;
    pub const duckdb_column_type = __root.duckdb_column_type;
    pub const duckdb_result_statement_type = __root.duckdb_result_statement_type;
    pub const duckdb_column_logical_type = __root.duckdb_column_logical_type;
    pub const duckdb_column_count = __root.duckdb_column_count;
    pub const duckdb_row_count = __root.duckdb_row_count;
    pub const duckdb_rows_changed = __root.duckdb_rows_changed;
    pub const duckdb_column_data = __root.duckdb_column_data;
    pub const duckdb_nullmask_data = __root.duckdb_nullmask_data;
    pub const duckdb_result_error = __root.duckdb_result_error;
    pub const duckdb_result_error_type = __root.duckdb_result_error_type;
    pub const duckdb_result_get_chunk = __root.duckdb_result_get_chunk;
    pub const duckdb_result_is_streaming = __root.duckdb_result_is_streaming;
    pub const duckdb_result_chunk_count = __root.duckdb_result_chunk_count;
    pub const duckdb_result_return_type = __root.duckdb_result_return_type;
    pub const duckdb_value_boolean = __root.duckdb_value_boolean;
    pub const duckdb_value_int8 = __root.duckdb_value_int8;
    pub const duckdb_value_int16 = __root.duckdb_value_int16;
    pub const duckdb_value_int32 = __root.duckdb_value_int32;
    pub const duckdb_value_int64 = __root.duckdb_value_int64;
    pub const duckdb_value_hugeint = __root.duckdb_value_hugeint;
    pub const duckdb_value_uhugeint = __root.duckdb_value_uhugeint;
    pub const duckdb_value_decimal = __root.duckdb_value_decimal;
    pub const duckdb_value_uint8 = __root.duckdb_value_uint8;
    pub const duckdb_value_uint16 = __root.duckdb_value_uint16;
    pub const duckdb_value_uint32 = __root.duckdb_value_uint32;
    pub const duckdb_value_uint64 = __root.duckdb_value_uint64;
    pub const duckdb_value_float = __root.duckdb_value_float;
    pub const duckdb_value_double = __root.duckdb_value_double;
    pub const duckdb_value_date = __root.duckdb_value_date;
    pub const duckdb_value_time = __root.duckdb_value_time;
    pub const duckdb_value_timestamp = __root.duckdb_value_timestamp;
    pub const duckdb_value_interval = __root.duckdb_value_interval;
    pub const duckdb_value_varchar = __root.duckdb_value_varchar;
    pub const duckdb_value_string = __root.duckdb_value_string;
    pub const duckdb_value_varchar_internal = __root.duckdb_value_varchar_internal;
    pub const duckdb_value_string_internal = __root.duckdb_value_string_internal;
    pub const duckdb_value_blob = __root.duckdb_value_blob;
    pub const duckdb_value_is_null = __root.duckdb_value_is_null;
    pub const duckdb_result_arrow_array = __root.duckdb_result_arrow_array;
    pub const duckdb_stream_fetch_chunk = __root.duckdb_stream_fetch_chunk;
    pub const duckdb_fetch_chunk = __root.duckdb_fetch_chunk;
    pub const result = __root.duckdb_destroy_result;
    pub const name = __root.duckdb_column_name;
    pub const @"type" = __root.duckdb_column_type;
    pub const statement_type = __root.duckdb_result_statement_type;
    pub const count = __root.duckdb_column_count;
    pub const changed = __root.duckdb_rows_changed;
    pub const data = __root.duckdb_column_data;
    pub const @"error" = __root.duckdb_result_error;
    pub const error_type = __root.duckdb_result_error_type;
    pub const get_chunk = __root.duckdb_result_get_chunk;
    pub const is_streaming = __root.duckdb_result_is_streaming;
    pub const chunk_count = __root.duckdb_result_chunk_count;
    pub const return_type = __root.duckdb_result_return_type;
    pub const boolean = __root.duckdb_value_boolean;
    pub const int8 = __root.duckdb_value_int8;
    pub const int16 = __root.duckdb_value_int16;
    pub const int32 = __root.duckdb_value_int32;
    pub const int64 = __root.duckdb_value_int64;
    pub const hugeint = __root.duckdb_value_hugeint;
    pub const uhugeint = __root.duckdb_value_uhugeint;
    pub const decimal = __root.duckdb_value_decimal;
    pub const uint8 = __root.duckdb_value_uint8;
    pub const uint16 = __root.duckdb_value_uint16;
    pub const uint32 = __root.duckdb_value_uint32;
    pub const uint64 = __root.duckdb_value_uint64;
    pub const float = __root.duckdb_value_float;
    pub const double = __root.duckdb_value_double;
    pub const date = __root.duckdb_value_date;
    pub const time = __root.duckdb_value_time;
    pub const timestamp = __root.duckdb_value_timestamp;
    pub const interval = __root.duckdb_value_interval;
    pub const varchar = __root.duckdb_value_varchar;
    pub const string = __root.duckdb_value_string;
    pub const internal = __root.duckdb_value_varchar_internal;
    pub const blob = __root.duckdb_value_blob;
    pub const @"null" = __root.duckdb_value_is_null;
    pub const arrow_array = __root.duckdb_result_arrow_array;
    pub const chunk = __root.duckdb_stream_fetch_chunk;
};
pub const struct__duckdb_instance_cache = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_get_or_create_from_cache = __root.duckdb_get_or_create_from_cache;
    pub const cache = __root.duckdb_get_or_create_from_cache;
};
pub const duckdb_instance_cache = [*c]struct__duckdb_instance_cache;
pub const struct__duckdb_database = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_connect = __root.duckdb_connect;
    pub const duckdb_add_replacement_scan = __root.duckdb_add_replacement_scan;
    pub const duckdb_execute_tasks = __root.duckdb_execute_tasks;
    pub const duckdb_create_task_state = __root.duckdb_create_task_state;
    pub const connect = __root.duckdb_connect;
    pub const scan = __root.duckdb_add_replacement_scan;
    pub const tasks = __root.duckdb_execute_tasks;
    pub const state = __root.duckdb_create_task_state;
};
pub const duckdb_database = [*c]struct__duckdb_database;
pub const struct__duckdb_connection = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_interrupt = __root.duckdb_interrupt;
    pub const duckdb_query_progress = __root.duckdb_query_progress;
    pub const duckdb_query = __root.duckdb_query;
    pub const duckdb_prepare = __root.duckdb_prepare;
    pub const duckdb_extract_statements = __root.duckdb_extract_statements;
    pub const duckdb_prepare_extracted_statement = __root.duckdb_prepare_extracted_statement;
    pub const duckdb_register_logical_type = __root.duckdb_register_logical_type;
    pub const duckdb_register_scalar_function = __root.duckdb_register_scalar_function;
    pub const duckdb_register_scalar_function_set = __root.duckdb_register_scalar_function_set;
    pub const duckdb_register_aggregate_function = __root.duckdb_register_aggregate_function;
    pub const duckdb_register_aggregate_function_set = __root.duckdb_register_aggregate_function_set;
    pub const duckdb_register_table_function = __root.duckdb_register_table_function;
    pub const duckdb_get_profiling_info = __root.duckdb_get_profiling_info;
    pub const duckdb_appender_create = __root.duckdb_appender_create;
    pub const duckdb_appender_create_ext = __root.duckdb_appender_create_ext;
    pub const duckdb_table_description_create = __root.duckdb_table_description_create;
    pub const duckdb_table_description_create_ext = __root.duckdb_table_description_create_ext;
    pub const duckdb_query_arrow = __root.duckdb_query_arrow;
    pub const duckdb_arrow_scan = __root.duckdb_arrow_scan;
    pub const duckdb_arrow_array_scan = __root.duckdb_arrow_array_scan;
    pub const duckdb_execution_is_finished = __root.duckdb_execution_is_finished;
    pub const duckdb_register_cast_function = __root.duckdb_register_cast_function;
    pub const interrupt = __root.duckdb_interrupt;
    pub const progress = __root.duckdb_query_progress;
    pub const query = __root.duckdb_query;
    pub const prepare = __root.duckdb_prepare;
    pub const statements = __root.duckdb_extract_statements;
    pub const statement = __root.duckdb_prepare_extracted_statement;
    pub const @"type" = __root.duckdb_register_logical_type;
    pub const function = __root.duckdb_register_scalar_function;
    pub const set = __root.duckdb_register_scalar_function_set;
    pub const info = __root.duckdb_get_profiling_info;
    pub const create = __root.duckdb_appender_create;
    pub const ext = __root.duckdb_appender_create_ext;
    pub const arrow = __root.duckdb_query_arrow;
    pub const scan = __root.duckdb_arrow_scan;
    pub const finished = __root.duckdb_execution_is_finished;
};
pub const duckdb_connection = [*c]struct__duckdb_connection;
pub const struct__duckdb_prepared_statement = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_prepare_error = __root.duckdb_prepare_error;
    pub const duckdb_nparams = __root.duckdb_nparams;
    pub const duckdb_parameter_name = __root.duckdb_parameter_name;
    pub const duckdb_param_type = __root.duckdb_param_type;
    pub const duckdb_param_logical_type = __root.duckdb_param_logical_type;
    pub const duckdb_clear_bindings = __root.duckdb_clear_bindings;
    pub const duckdb_prepared_statement_type = __root.duckdb_prepared_statement_type;
    pub const duckdb_bind_value = __root.duckdb_bind_value;
    pub const duckdb_bind_parameter_index = __root.duckdb_bind_parameter_index;
    pub const duckdb_bind_boolean = __root.duckdb_bind_boolean;
    pub const duckdb_bind_int8 = __root.duckdb_bind_int8;
    pub const duckdb_bind_int16 = __root.duckdb_bind_int16;
    pub const duckdb_bind_int32 = __root.duckdb_bind_int32;
    pub const duckdb_bind_int64 = __root.duckdb_bind_int64;
    pub const duckdb_bind_hugeint = __root.duckdb_bind_hugeint;
    pub const duckdb_bind_uhugeint = __root.duckdb_bind_uhugeint;
    pub const duckdb_bind_decimal = __root.duckdb_bind_decimal;
    pub const duckdb_bind_uint8 = __root.duckdb_bind_uint8;
    pub const duckdb_bind_uint16 = __root.duckdb_bind_uint16;
    pub const duckdb_bind_uint32 = __root.duckdb_bind_uint32;
    pub const duckdb_bind_uint64 = __root.duckdb_bind_uint64;
    pub const duckdb_bind_float = __root.duckdb_bind_float;
    pub const duckdb_bind_double = __root.duckdb_bind_double;
    pub const duckdb_bind_date = __root.duckdb_bind_date;
    pub const duckdb_bind_time = __root.duckdb_bind_time;
    pub const duckdb_bind_timestamp = __root.duckdb_bind_timestamp;
    pub const duckdb_bind_timestamp_tz = __root.duckdb_bind_timestamp_tz;
    pub const duckdb_bind_interval = __root.duckdb_bind_interval;
    pub const duckdb_bind_varchar = __root.duckdb_bind_varchar;
    pub const duckdb_bind_varchar_length = __root.duckdb_bind_varchar_length;
    pub const duckdb_bind_blob = __root.duckdb_bind_blob;
    pub const duckdb_bind_null = __root.duckdb_bind_null;
    pub const duckdb_execute_prepared = __root.duckdb_execute_prepared;
    pub const duckdb_execute_prepared_streaming = __root.duckdb_execute_prepared_streaming;
    pub const duckdb_pending_prepared = __root.duckdb_pending_prepared;
    pub const duckdb_pending_prepared_streaming = __root.duckdb_pending_prepared_streaming;
    pub const duckdb_prepared_arrow_schema = __root.duckdb_prepared_arrow_schema;
    pub const duckdb_execute_prepared_arrow = __root.duckdb_execute_prepared_arrow;
    pub const @"error" = __root.duckdb_prepare_error;
    pub const nparams = __root.duckdb_nparams;
    pub const name = __root.duckdb_parameter_name;
    pub const @"type" = __root.duckdb_param_type;
    pub const bindings = __root.duckdb_clear_bindings;
    pub const value = __root.duckdb_bind_value;
    pub const index = __root.duckdb_bind_parameter_index;
    pub const boolean = __root.duckdb_bind_boolean;
    pub const int8 = __root.duckdb_bind_int8;
    pub const int16 = __root.duckdb_bind_int16;
    pub const int32 = __root.duckdb_bind_int32;
    pub const int64 = __root.duckdb_bind_int64;
    pub const hugeint = __root.duckdb_bind_hugeint;
    pub const uhugeint = __root.duckdb_bind_uhugeint;
    pub const decimal = __root.duckdb_bind_decimal;
    pub const uint8 = __root.duckdb_bind_uint8;
    pub const uint16 = __root.duckdb_bind_uint16;
    pub const uint32 = __root.duckdb_bind_uint32;
    pub const uint64 = __root.duckdb_bind_uint64;
    pub const float = __root.duckdb_bind_float;
    pub const double = __root.duckdb_bind_double;
    pub const date = __root.duckdb_bind_date;
    pub const time = __root.duckdb_bind_time;
    pub const timestamp = __root.duckdb_bind_timestamp;
    pub const tz = __root.duckdb_bind_timestamp_tz;
    pub const interval = __root.duckdb_bind_interval;
    pub const varchar = __root.duckdb_bind_varchar;
    pub const length = __root.duckdb_bind_varchar_length;
    pub const blob = __root.duckdb_bind_blob;
    pub const @"null" = __root.duckdb_bind_null;
    pub const prepared = __root.duckdb_execute_prepared;
    pub const streaming = __root.duckdb_execute_prepared_streaming;
    pub const schema = __root.duckdb_prepared_arrow_schema;
    pub const arrow = __root.duckdb_execute_prepared_arrow;
};
pub const duckdb_prepared_statement = [*c]struct__duckdb_prepared_statement;
pub const struct__duckdb_extracted_statements = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_extract_statements_error = __root.duckdb_extract_statements_error;
    pub const @"error" = __root.duckdb_extract_statements_error;
};
pub const duckdb_extracted_statements = [*c]struct__duckdb_extracted_statements;
pub const struct__duckdb_pending_result = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_pending_error = __root.duckdb_pending_error;
    pub const duckdb_pending_execute_task = __root.duckdb_pending_execute_task;
    pub const duckdb_pending_execute_check_state = __root.duckdb_pending_execute_check_state;
    pub const duckdb_execute_pending = __root.duckdb_execute_pending;
    pub const @"error" = __root.duckdb_pending_error;
    pub const task = __root.duckdb_pending_execute_task;
    pub const state = __root.duckdb_pending_execute_check_state;
    pub const pending = __root.duckdb_execute_pending;
};
pub const duckdb_pending_result = [*c]struct__duckdb_pending_result;
pub const struct__duckdb_appender = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_appender_column_count = __root.duckdb_appender_column_count;
    pub const duckdb_appender_column_type = __root.duckdb_appender_column_type;
    pub const duckdb_appender_error = __root.duckdb_appender_error;
    pub const duckdb_appender_flush = __root.duckdb_appender_flush;
    pub const duckdb_appender_close = __root.duckdb_appender_close;
    pub const duckdb_appender_add_column = __root.duckdb_appender_add_column;
    pub const duckdb_appender_clear_columns = __root.duckdb_appender_clear_columns;
    pub const duckdb_appender_begin_row = __root.duckdb_appender_begin_row;
    pub const duckdb_appender_end_row = __root.duckdb_appender_end_row;
    pub const duckdb_append_default = __root.duckdb_append_default;
    pub const duckdb_append_default_to_chunk = __root.duckdb_append_default_to_chunk;
    pub const duckdb_append_bool = __root.duckdb_append_bool;
    pub const duckdb_append_int8 = __root.duckdb_append_int8;
    pub const duckdb_append_int16 = __root.duckdb_append_int16;
    pub const duckdb_append_int32 = __root.duckdb_append_int32;
    pub const duckdb_append_int64 = __root.duckdb_append_int64;
    pub const duckdb_append_hugeint = __root.duckdb_append_hugeint;
    pub const duckdb_append_uint8 = __root.duckdb_append_uint8;
    pub const duckdb_append_uint16 = __root.duckdb_append_uint16;
    pub const duckdb_append_uint32 = __root.duckdb_append_uint32;
    pub const duckdb_append_uint64 = __root.duckdb_append_uint64;
    pub const duckdb_append_uhugeint = __root.duckdb_append_uhugeint;
    pub const duckdb_append_float = __root.duckdb_append_float;
    pub const duckdb_append_double = __root.duckdb_append_double;
    pub const duckdb_append_date = __root.duckdb_append_date;
    pub const duckdb_append_time = __root.duckdb_append_time;
    pub const duckdb_append_timestamp = __root.duckdb_append_timestamp;
    pub const duckdb_append_interval = __root.duckdb_append_interval;
    pub const duckdb_append_varchar = __root.duckdb_append_varchar;
    pub const duckdb_append_varchar_length = __root.duckdb_append_varchar_length;
    pub const duckdb_append_blob = __root.duckdb_append_blob;
    pub const duckdb_append_null = __root.duckdb_append_null;
    pub const duckdb_append_value = __root.duckdb_append_value;
    pub const duckdb_append_data_chunk = __root.duckdb_append_data_chunk;
    pub const column_count = __root.duckdb_appender_column_count;
    pub const column_type = __root.duckdb_appender_column_type;
    pub const @"error" = __root.duckdb_appender_error;
    pub const flush = __root.duckdb_appender_flush;
    pub const close = __root.duckdb_appender_close;
    pub const add_column = __root.duckdb_appender_add_column;
    pub const clear_columns = __root.duckdb_appender_clear_columns;
    pub const begin_row = __root.duckdb_appender_begin_row;
    pub const end_row = __root.duckdb_appender_end_row;
    pub const default = __root.duckdb_append_default;
    pub const chunk = __root.duckdb_append_default_to_chunk;
    pub const int8 = __root.duckdb_append_int8;
    pub const int16 = __root.duckdb_append_int16;
    pub const int32 = __root.duckdb_append_int32;
    pub const int64 = __root.duckdb_append_int64;
    pub const hugeint = __root.duckdb_append_hugeint;
    pub const uint8 = __root.duckdb_append_uint8;
    pub const uint16 = __root.duckdb_append_uint16;
    pub const uint32 = __root.duckdb_append_uint32;
    pub const uint64 = __root.duckdb_append_uint64;
    pub const uhugeint = __root.duckdb_append_uhugeint;
    pub const float = __root.duckdb_append_float;
    pub const double = __root.duckdb_append_double;
    pub const date = __root.duckdb_append_date;
    pub const time = __root.duckdb_append_time;
    pub const timestamp = __root.duckdb_append_timestamp;
    pub const interval = __root.duckdb_append_interval;
    pub const varchar = __root.duckdb_append_varchar;
    pub const length = __root.duckdb_append_varchar_length;
    pub const blob = __root.duckdb_append_blob;
    pub const @"null" = __root.duckdb_append_null;
    pub const value = __root.duckdb_append_value;
};
pub const duckdb_appender = [*c]struct__duckdb_appender;
pub const struct__duckdb_table_description = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_table_description_error = __root.duckdb_table_description_error;
    pub const duckdb_column_has_default = __root.duckdb_column_has_default;
    pub const duckdb_table_description_get_column_name = __root.duckdb_table_description_get_column_name;
    pub const @"error" = __root.duckdb_table_description_error;
    pub const default = __root.duckdb_column_has_default;
    pub const get_column_name = __root.duckdb_table_description_get_column_name;
};
pub const duckdb_table_description = [*c]struct__duckdb_table_description;
pub const struct__duckdb_config = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_set_config = __root.duckdb_set_config;
    pub const config = __root.duckdb_set_config;
};
pub const duckdb_config = [*c]struct__duckdb_config;
pub const struct__duckdb_logical_type = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_create_struct_value = __root.duckdb_create_struct_value;
    pub const duckdb_create_list_value = __root.duckdb_create_list_value;
    pub const duckdb_create_array_value = __root.duckdb_create_array_value;
    pub const duckdb_create_enum_value = __root.duckdb_create_enum_value;
    pub const duckdb_logical_type_get_alias = __root.duckdb_logical_type_get_alias;
    pub const duckdb_logical_type_set_alias = __root.duckdb_logical_type_set_alias;
    pub const duckdb_create_list_type = __root.duckdb_create_list_type;
    pub const duckdb_create_array_type = __root.duckdb_create_array_type;
    pub const duckdb_create_map_type = __root.duckdb_create_map_type;
    pub const duckdb_get_type_id = __root.duckdb_get_type_id;
    pub const duckdb_decimal_width = __root.duckdb_decimal_width;
    pub const duckdb_decimal_scale = __root.duckdb_decimal_scale;
    pub const duckdb_decimal_internal_type = __root.duckdb_decimal_internal_type;
    pub const duckdb_enum_internal_type = __root.duckdb_enum_internal_type;
    pub const duckdb_enum_dictionary_size = __root.duckdb_enum_dictionary_size;
    pub const duckdb_enum_dictionary_value = __root.duckdb_enum_dictionary_value;
    pub const duckdb_list_type_child_type = __root.duckdb_list_type_child_type;
    pub const duckdb_array_type_child_type = __root.duckdb_array_type_child_type;
    pub const duckdb_array_type_array_size = __root.duckdb_array_type_array_size;
    pub const duckdb_map_type_key_type = __root.duckdb_map_type_key_type;
    pub const duckdb_map_type_value_type = __root.duckdb_map_type_value_type;
    pub const duckdb_struct_type_child_count = __root.duckdb_struct_type_child_count;
    pub const duckdb_struct_type_child_name = __root.duckdb_struct_type_child_name;
    pub const duckdb_struct_type_child_type = __root.duckdb_struct_type_child_type;
    pub const duckdb_union_type_member_count = __root.duckdb_union_type_member_count;
    pub const duckdb_union_type_member_name = __root.duckdb_union_type_member_name;
    pub const duckdb_union_type_member_type = __root.duckdb_union_type_member_type;
    pub const value = __root.duckdb_create_struct_value;
    pub const get_alias = __root.duckdb_logical_type_get_alias;
    pub const set_alias = __root.duckdb_logical_type_set_alias;
    pub const @"type" = __root.duckdb_create_list_type;
    pub const id = __root.duckdb_get_type_id;
    pub const width = __root.duckdb_decimal_width;
    pub const scale = __root.duckdb_decimal_scale;
    pub const size = __root.duckdb_enum_dictionary_size;
    pub const count = __root.duckdb_struct_type_child_count;
    pub const name = __root.duckdb_struct_type_child_name;
};
pub const duckdb_logical_type = [*c]struct__duckdb_logical_type;
pub const struct__duckdb_create_type_info = extern struct {
    internal_ptr: ?*anyopaque = null,
};
pub const duckdb_create_type_info = [*c]struct__duckdb_create_type_info;
pub const struct__duckdb_data_chunk = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_data_chunk_reset = __root.duckdb_data_chunk_reset;
    pub const duckdb_data_chunk_get_column_count = __root.duckdb_data_chunk_get_column_count;
    pub const duckdb_data_chunk_get_vector = __root.duckdb_data_chunk_get_vector;
    pub const duckdb_data_chunk_get_size = __root.duckdb_data_chunk_get_size;
    pub const duckdb_data_chunk_set_size = __root.duckdb_data_chunk_set_size;
    pub const reset = __root.duckdb_data_chunk_reset;
    pub const get_column_count = __root.duckdb_data_chunk_get_column_count;
    pub const get_vector = __root.duckdb_data_chunk_get_vector;
    pub const get_size = __root.duckdb_data_chunk_get_size;
    pub const set_size = __root.duckdb_data_chunk_set_size;
};
pub const duckdb_data_chunk = [*c]struct__duckdb_data_chunk;
pub const struct__duckdb_value = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_get_bool = __root.duckdb_get_bool;
    pub const duckdb_get_int8 = __root.duckdb_get_int8;
    pub const duckdb_get_uint8 = __root.duckdb_get_uint8;
    pub const duckdb_get_int16 = __root.duckdb_get_int16;
    pub const duckdb_get_uint16 = __root.duckdb_get_uint16;
    pub const duckdb_get_int32 = __root.duckdb_get_int32;
    pub const duckdb_get_uint32 = __root.duckdb_get_uint32;
    pub const duckdb_get_int64 = __root.duckdb_get_int64;
    pub const duckdb_get_uint64 = __root.duckdb_get_uint64;
    pub const duckdb_get_hugeint = __root.duckdb_get_hugeint;
    pub const duckdb_get_uhugeint = __root.duckdb_get_uhugeint;
    pub const duckdb_get_varint = __root.duckdb_get_varint;
    pub const duckdb_get_decimal = __root.duckdb_get_decimal;
    pub const duckdb_get_float = __root.duckdb_get_float;
    pub const duckdb_get_double = __root.duckdb_get_double;
    pub const duckdb_get_date = __root.duckdb_get_date;
    pub const duckdb_get_time = __root.duckdb_get_time;
    pub const duckdb_get_time_tz = __root.duckdb_get_time_tz;
    pub const duckdb_get_timestamp = __root.duckdb_get_timestamp;
    pub const duckdb_get_timestamp_tz = __root.duckdb_get_timestamp_tz;
    pub const duckdb_get_timestamp_s = __root.duckdb_get_timestamp_s;
    pub const duckdb_get_timestamp_ms = __root.duckdb_get_timestamp_ms;
    pub const duckdb_get_timestamp_ns = __root.duckdb_get_timestamp_ns;
    pub const duckdb_get_interval = __root.duckdb_get_interval;
    pub const duckdb_get_value_type = __root.duckdb_get_value_type;
    pub const duckdb_get_blob = __root.duckdb_get_blob;
    pub const duckdb_get_bit = __root.duckdb_get_bit;
    pub const duckdb_get_uuid = __root.duckdb_get_uuid;
    pub const duckdb_get_varchar = __root.duckdb_get_varchar;
    pub const duckdb_get_map_size = __root.duckdb_get_map_size;
    pub const duckdb_get_map_key = __root.duckdb_get_map_key;
    pub const duckdb_get_map_value = __root.duckdb_get_map_value;
    pub const duckdb_is_null_value = __root.duckdb_is_null_value;
    pub const duckdb_get_list_size = __root.duckdb_get_list_size;
    pub const duckdb_get_list_child = __root.duckdb_get_list_child;
    pub const duckdb_get_enum_value = __root.duckdb_get_enum_value;
    pub const duckdb_get_struct_child = __root.duckdb_get_struct_child;
    pub const int8 = __root.duckdb_get_int8;
    pub const uint8 = __root.duckdb_get_uint8;
    pub const int16 = __root.duckdb_get_int16;
    pub const uint16 = __root.duckdb_get_uint16;
    pub const int32 = __root.duckdb_get_int32;
    pub const uint32 = __root.duckdb_get_uint32;
    pub const int64 = __root.duckdb_get_int64;
    pub const uint64 = __root.duckdb_get_uint64;
    pub const hugeint = __root.duckdb_get_hugeint;
    pub const uhugeint = __root.duckdb_get_uhugeint;
    pub const varint = __root.duckdb_get_varint;
    pub const decimal = __root.duckdb_get_decimal;
    pub const float = __root.duckdb_get_float;
    pub const double = __root.duckdb_get_double;
    pub const date = __root.duckdb_get_date;
    pub const time = __root.duckdb_get_time;
    pub const tz = __root.duckdb_get_time_tz;
    pub const timestamp = __root.duckdb_get_timestamp;
    pub const s = __root.duckdb_get_timestamp_s;
    pub const ms = __root.duckdb_get_timestamp_ms;
    pub const ns = __root.duckdb_get_timestamp_ns;
    pub const interval = __root.duckdb_get_interval;
    pub const @"type" = __root.duckdb_get_value_type;
    pub const blob = __root.duckdb_get_blob;
    pub const bit = __root.duckdb_get_bit;
    pub const uuid = __root.duckdb_get_uuid;
    pub const varchar = __root.duckdb_get_varchar;
    pub const size = __root.duckdb_get_map_size;
    pub const key = __root.duckdb_get_map_key;
    pub const value = __root.duckdb_get_map_value;
    pub const child = __root.duckdb_get_list_child;
};
pub const duckdb_value = [*c]struct__duckdb_value;
pub const struct__duckdb_profiling_info = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_profiling_info_get_value = __root.duckdb_profiling_info_get_value;
    pub const duckdb_profiling_info_get_metrics = __root.duckdb_profiling_info_get_metrics;
    pub const duckdb_profiling_info_get_child_count = __root.duckdb_profiling_info_get_child_count;
    pub const duckdb_profiling_info_get_child = __root.duckdb_profiling_info_get_child;
    pub const get_value = __root.duckdb_profiling_info_get_value;
    pub const get_metrics = __root.duckdb_profiling_info_get_metrics;
    pub const get_child_count = __root.duckdb_profiling_info_get_child_count;
    pub const get_child = __root.duckdb_profiling_info_get_child;
};
pub const duckdb_profiling_info = [*c]struct__duckdb_profiling_info;
pub const struct__duckdb_extension_info = extern struct {
    internal_ptr: ?*anyopaque = null,
};
pub const duckdb_extension_info = [*c]struct__duckdb_extension_info;
pub const struct__duckdb_function_info = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_scalar_function_get_extra_info = __root.duckdb_scalar_function_get_extra_info;
    pub const duckdb_scalar_function_set_error = __root.duckdb_scalar_function_set_error;
    pub const duckdb_aggregate_function_get_extra_info = __root.duckdb_aggregate_function_get_extra_info;
    pub const duckdb_aggregate_function_set_error = __root.duckdb_aggregate_function_set_error;
    pub const duckdb_function_get_extra_info = __root.duckdb_function_get_extra_info;
    pub const duckdb_function_get_bind_data = __root.duckdb_function_get_bind_data;
    pub const duckdb_function_get_init_data = __root.duckdb_function_get_init_data;
    pub const duckdb_function_get_local_init_data = __root.duckdb_function_get_local_init_data;
    pub const duckdb_function_set_error = __root.duckdb_function_set_error;
    pub const duckdb_cast_function_get_extra_info = __root.duckdb_cast_function_get_extra_info;
    pub const duckdb_cast_function_get_cast_mode = __root.duckdb_cast_function_get_cast_mode;
    pub const duckdb_cast_function_set_error = __root.duckdb_cast_function_set_error;
    pub const duckdb_cast_function_set_row_error = __root.duckdb_cast_function_set_row_error;
    pub const info = __root.duckdb_scalar_function_get_extra_info;
    pub const @"error" = __root.duckdb_scalar_function_set_error;
    pub const data = __root.duckdb_function_get_bind_data;
    pub const mode = __root.duckdb_cast_function_get_cast_mode;
};
pub const duckdb_function_info = [*c]struct__duckdb_function_info;
pub const struct__duckdb_scalar_function = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_scalar_function_set_name = __root.duckdb_scalar_function_set_name;
    pub const duckdb_scalar_function_set_varargs = __root.duckdb_scalar_function_set_varargs;
    pub const duckdb_scalar_function_set_special_handling = __root.duckdb_scalar_function_set_special_handling;
    pub const duckdb_scalar_function_set_volatile = __root.duckdb_scalar_function_set_volatile;
    pub const duckdb_scalar_function_add_parameter = __root.duckdb_scalar_function_add_parameter;
    pub const duckdb_scalar_function_set_return_type = __root.duckdb_scalar_function_set_return_type;
    pub const duckdb_scalar_function_set_extra_info = __root.duckdb_scalar_function_set_extra_info;
    pub const duckdb_scalar_function_set_function = __root.duckdb_scalar_function_set_function;
    pub const set_name = __root.duckdb_scalar_function_set_name;
    pub const set_varargs = __root.duckdb_scalar_function_set_varargs;
    pub const set_special_handling = __root.duckdb_scalar_function_set_special_handling;
    pub const set_volatile = __root.duckdb_scalar_function_set_volatile;
    pub const add_parameter = __root.duckdb_scalar_function_add_parameter;
    pub const set_return_type = __root.duckdb_scalar_function_set_return_type;
    pub const set_extra_info = __root.duckdb_scalar_function_set_extra_info;
    pub const set_function = __root.duckdb_scalar_function_set_function;
};
pub const duckdb_scalar_function = [*c]struct__duckdb_scalar_function;
pub const struct__duckdb_scalar_function_set = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_add_scalar_function_to_set = __root.duckdb_add_scalar_function_to_set;
    pub const set = __root.duckdb_add_scalar_function_to_set;
};
pub const duckdb_scalar_function_set = [*c]struct__duckdb_scalar_function_set;
pub const duckdb_scalar_function_t = ?*const fn (info: duckdb_function_info, input: duckdb_data_chunk, output: duckdb_vector) callconv(.c) void;
pub const struct__duckdb_aggregate_function = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_aggregate_function_set_name = __root.duckdb_aggregate_function_set_name;
    pub const duckdb_aggregate_function_add_parameter = __root.duckdb_aggregate_function_add_parameter;
    pub const duckdb_aggregate_function_set_return_type = __root.duckdb_aggregate_function_set_return_type;
    pub const duckdb_aggregate_function_set_functions = __root.duckdb_aggregate_function_set_functions;
    pub const duckdb_aggregate_function_set_destructor = __root.duckdb_aggregate_function_set_destructor;
    pub const duckdb_aggregate_function_set_special_handling = __root.duckdb_aggregate_function_set_special_handling;
    pub const duckdb_aggregate_function_set_extra_info = __root.duckdb_aggregate_function_set_extra_info;
    pub const set_name = __root.duckdb_aggregate_function_set_name;
    pub const add_parameter = __root.duckdb_aggregate_function_add_parameter;
    pub const set_return_type = __root.duckdb_aggregate_function_set_return_type;
    pub const set_functions = __root.duckdb_aggregate_function_set_functions;
    pub const set_destructor = __root.duckdb_aggregate_function_set_destructor;
    pub const set_special_handling = __root.duckdb_aggregate_function_set_special_handling;
    pub const set_extra_info = __root.duckdb_aggregate_function_set_extra_info;
};
pub const duckdb_aggregate_function = [*c]struct__duckdb_aggregate_function;
pub const struct__duckdb_aggregate_function_set = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_add_aggregate_function_to_set = __root.duckdb_add_aggregate_function_to_set;
    pub const set = __root.duckdb_add_aggregate_function_to_set;
};
pub const duckdb_aggregate_function_set = [*c]struct__duckdb_aggregate_function_set;
pub const struct__duckdb_aggregate_state = extern struct {
    internal_ptr: ?*anyopaque = null,
};
pub const duckdb_aggregate_state = [*c]struct__duckdb_aggregate_state;
pub const duckdb_aggregate_state_size = ?*const fn (info: duckdb_function_info) callconv(.c) idx_t;
pub const duckdb_aggregate_init_t = ?*const fn (info: duckdb_function_info, state: duckdb_aggregate_state) callconv(.c) void;
pub const duckdb_aggregate_destroy_t = ?*const fn (states: [*c]duckdb_aggregate_state, count: idx_t) callconv(.c) void;
pub const duckdb_aggregate_update_t = ?*const fn (info: duckdb_function_info, input: duckdb_data_chunk, states: [*c]duckdb_aggregate_state) callconv(.c) void;
pub const duckdb_aggregate_combine_t = ?*const fn (info: duckdb_function_info, source: [*c]duckdb_aggregate_state, target: [*c]duckdb_aggregate_state, count: idx_t) callconv(.c) void;
pub const duckdb_aggregate_finalize_t = ?*const fn (info: duckdb_function_info, source: [*c]duckdb_aggregate_state, result: duckdb_vector, count: idx_t, offset: idx_t) callconv(.c) void;
pub const struct__duckdb_table_function = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_table_function_set_name = __root.duckdb_table_function_set_name;
    pub const duckdb_table_function_add_parameter = __root.duckdb_table_function_add_parameter;
    pub const duckdb_table_function_add_named_parameter = __root.duckdb_table_function_add_named_parameter;
    pub const duckdb_table_function_set_extra_info = __root.duckdb_table_function_set_extra_info;
    pub const duckdb_table_function_set_bind = __root.duckdb_table_function_set_bind;
    pub const duckdb_table_function_set_init = __root.duckdb_table_function_set_init;
    pub const duckdb_table_function_set_local_init = __root.duckdb_table_function_set_local_init;
    pub const duckdb_table_function_set_function = __root.duckdb_table_function_set_function;
    pub const duckdb_table_function_supports_projection_pushdown = __root.duckdb_table_function_supports_projection_pushdown;
    pub const set_name = __root.duckdb_table_function_set_name;
    pub const add_parameter = __root.duckdb_table_function_add_parameter;
    pub const add_named_parameter = __root.duckdb_table_function_add_named_parameter;
    pub const set_extra_info = __root.duckdb_table_function_set_extra_info;
    pub const set_bind = __root.duckdb_table_function_set_bind;
    pub const set_init = __root.duckdb_table_function_set_init;
    pub const set_local_init = __root.duckdb_table_function_set_local_init;
    pub const set_function = __root.duckdb_table_function_set_function;
    pub const supports_projection_pushdown = __root.duckdb_table_function_supports_projection_pushdown;
};
pub const duckdb_table_function = [*c]struct__duckdb_table_function;
pub const struct__duckdb_bind_info = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_bind_get_extra_info = __root.duckdb_bind_get_extra_info;
    pub const duckdb_bind_add_result_column = __root.duckdb_bind_add_result_column;
    pub const duckdb_bind_get_parameter_count = __root.duckdb_bind_get_parameter_count;
    pub const duckdb_bind_get_parameter = __root.duckdb_bind_get_parameter;
    pub const duckdb_bind_get_named_parameter = __root.duckdb_bind_get_named_parameter;
    pub const duckdb_bind_set_bind_data = __root.duckdb_bind_set_bind_data;
    pub const duckdb_bind_set_cardinality = __root.duckdb_bind_set_cardinality;
    pub const duckdb_bind_set_error = __root.duckdb_bind_set_error;
    pub const info = __root.duckdb_bind_get_extra_info;
    pub const column = __root.duckdb_bind_add_result_column;
    pub const count = __root.duckdb_bind_get_parameter_count;
    pub const parameter = __root.duckdb_bind_get_parameter;
    pub const data = __root.duckdb_bind_set_bind_data;
    pub const cardinality = __root.duckdb_bind_set_cardinality;
    pub const @"error" = __root.duckdb_bind_set_error;
};
pub const duckdb_bind_info = [*c]struct__duckdb_bind_info;
pub const struct__duckdb_init_info = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_init_get_extra_info = __root.duckdb_init_get_extra_info;
    pub const duckdb_init_get_bind_data = __root.duckdb_init_get_bind_data;
    pub const duckdb_init_set_init_data = __root.duckdb_init_set_init_data;
    pub const duckdb_init_get_column_count = __root.duckdb_init_get_column_count;
    pub const duckdb_init_get_column_index = __root.duckdb_init_get_column_index;
    pub const duckdb_init_set_max_threads = __root.duckdb_init_set_max_threads;
    pub const duckdb_init_set_error = __root.duckdb_init_set_error;
    pub const info = __root.duckdb_init_get_extra_info;
    pub const data = __root.duckdb_init_get_bind_data;
    pub const count = __root.duckdb_init_get_column_count;
    pub const index = __root.duckdb_init_get_column_index;
    pub const threads = __root.duckdb_init_set_max_threads;
    pub const @"error" = __root.duckdb_init_set_error;
};
pub const duckdb_init_info = [*c]struct__duckdb_init_info;
pub const duckdb_table_function_bind_t = ?*const fn (info: duckdb_bind_info) callconv(.c) void;
pub const duckdb_table_function_init_t = ?*const fn (info: duckdb_init_info) callconv(.c) void;
pub const duckdb_table_function_t = ?*const fn (info: duckdb_function_info, output: duckdb_data_chunk) callconv(.c) void;
pub const struct__duckdb_cast_function = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_cast_function_set_source_type = __root.duckdb_cast_function_set_source_type;
    pub const duckdb_cast_function_set_target_type = __root.duckdb_cast_function_set_target_type;
    pub const duckdb_cast_function_set_implicit_cast_cost = __root.duckdb_cast_function_set_implicit_cast_cost;
    pub const duckdb_cast_function_set_function = __root.duckdb_cast_function_set_function;
    pub const duckdb_cast_function_set_extra_info = __root.duckdb_cast_function_set_extra_info;
    pub const set_source_type = __root.duckdb_cast_function_set_source_type;
    pub const set_target_type = __root.duckdb_cast_function_set_target_type;
    pub const set_implicit_cast_cost = __root.duckdb_cast_function_set_implicit_cast_cost;
    pub const set_function = __root.duckdb_cast_function_set_function;
    pub const set_extra_info = __root.duckdb_cast_function_set_extra_info;
};
pub const duckdb_cast_function = [*c]struct__duckdb_cast_function;
pub const duckdb_cast_function_t = ?*const fn (info: duckdb_function_info, count: idx_t, input: duckdb_vector, output: duckdb_vector) callconv(.c) bool;
pub const struct__duckdb_replacement_scan_info = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_replacement_scan_set_function_name = __root.duckdb_replacement_scan_set_function_name;
    pub const duckdb_replacement_scan_add_parameter = __root.duckdb_replacement_scan_add_parameter;
    pub const duckdb_replacement_scan_set_error = __root.duckdb_replacement_scan_set_error;
    pub const name = __root.duckdb_replacement_scan_set_function_name;
    pub const parameter = __root.duckdb_replacement_scan_add_parameter;
    pub const @"error" = __root.duckdb_replacement_scan_set_error;
};
pub const duckdb_replacement_scan_info = [*c]struct__duckdb_replacement_scan_info;
pub const duckdb_replacement_callback_t = ?*const fn (info: duckdb_replacement_scan_info, table_name: [*c]const u8, data: ?*anyopaque) callconv(.c) void;
pub const struct__duckdb_arrow = extern struct {
    internal_ptr: ?*anyopaque = null,
    pub const duckdb_query_arrow_schema = __root.duckdb_query_arrow_schema;
    pub const duckdb_query_arrow_array = __root.duckdb_query_arrow_array;
    pub const duckdb_arrow_column_count = __root.duckdb_arrow_column_count;
    pub const duckdb_arrow_row_count = __root.duckdb_arrow_row_count;
    pub const duckdb_arrow_rows_changed = __root.duckdb_arrow_rows_changed;
    pub const duckdb_query_arrow_error = __root.duckdb_query_arrow_error;
    pub const schema = __root.duckdb_query_arrow_schema;
    pub const array = __root.duckdb_query_arrow_array;
    pub const column_count = __root.duckdb_arrow_column_count;
    pub const row_count = __root.duckdb_arrow_row_count;
    pub const rows_changed = __root.duckdb_arrow_rows_changed;
    pub const @"error" = __root.duckdb_query_arrow_error;
};
pub const duckdb_arrow = [*c]struct__duckdb_arrow;
pub const struct__duckdb_arrow_stream = extern struct {
    internal_ptr: ?*anyopaque = null,
};
pub const duckdb_arrow_stream = [*c]struct__duckdb_arrow_stream;
pub const struct__duckdb_arrow_schema = extern struct {
    internal_ptr: ?*anyopaque = null,
};
pub const duckdb_arrow_schema = [*c]struct__duckdb_arrow_schema;
pub const struct__duckdb_arrow_array = extern struct {
    internal_ptr: ?*anyopaque = null,
};
pub const duckdb_arrow_array = [*c]struct__duckdb_arrow_array;
pub const struct_duckdb_extension_access = extern struct {
    set_error: ?*const fn (info: duckdb_extension_info, @"error": [*c]const u8) callconv(.c) void = null,
    get_database: ?*const fn (info: duckdb_extension_info) callconv(.c) [*c]duckdb_database = null,
    get_api: ?*const fn (info: duckdb_extension_info, version: [*c]const u8) callconv(.c) ?*const anyopaque = null,
};
pub extern fn duckdb_create_instance_cache(...) duckdb_instance_cache;
pub extern fn duckdb_get_or_create_from_cache(instance_cache: duckdb_instance_cache, path: [*c]const u8, out_database: [*c]duckdb_database, config: duckdb_config, out_error: [*c][*c]u8) duckdb_state;
pub extern fn duckdb_destroy_instance_cache(instance_cache: [*c]duckdb_instance_cache) void;
pub extern fn duckdb_open(path: [*c]const u8, out_database: [*c]duckdb_database) duckdb_state;
pub extern fn duckdb_open_ext(path: [*c]const u8, out_database: [*c]duckdb_database, config: duckdb_config, out_error: [*c][*c]u8) duckdb_state;
pub extern fn duckdb_close(database: [*c]duckdb_database) void;
pub extern fn duckdb_connect(database: duckdb_database, out_connection: [*c]duckdb_connection) duckdb_state;
pub extern fn duckdb_interrupt(connection: duckdb_connection) void;
pub extern fn duckdb_query_progress(connection: duckdb_connection) duckdb_query_progress_type;
pub extern fn duckdb_disconnect(connection: [*c]duckdb_connection) void;
pub extern fn duckdb_library_version(...) [*c]const u8;
pub extern fn duckdb_create_config(out_config: [*c]duckdb_config) duckdb_state;
pub extern fn duckdb_config_count(...) usize;
pub extern fn duckdb_get_config_flag(index: usize, out_name: [*c][*c]const u8, out_description: [*c][*c]const u8) duckdb_state;
pub extern fn duckdb_set_config(config: duckdb_config, name: [*c]const u8, option: [*c]const u8) duckdb_state;
pub extern fn duckdb_destroy_config(config: [*c]duckdb_config) void;
pub extern fn duckdb_query(connection: duckdb_connection, query: [*c]const u8, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_destroy_result(result: [*c]duckdb_result) void;
pub extern fn duckdb_column_name(result: [*c]duckdb_result, col: idx_t) [*c]const u8;
pub extern fn duckdb_column_type(result: [*c]duckdb_result, col: idx_t) duckdb_type;
pub extern fn duckdb_result_statement_type(result: duckdb_result) duckdb_statement_type;
pub extern fn duckdb_column_logical_type(result: [*c]duckdb_result, col: idx_t) duckdb_logical_type;
pub extern fn duckdb_column_count(result: [*c]duckdb_result) idx_t;
pub extern fn duckdb_row_count(result: [*c]duckdb_result) idx_t;
pub extern fn duckdb_rows_changed(result: [*c]duckdb_result) idx_t;
pub extern fn duckdb_column_data(result: [*c]duckdb_result, col: idx_t) ?*anyopaque;
pub extern fn duckdb_nullmask_data(result: [*c]duckdb_result, col: idx_t) [*c]bool;
pub extern fn duckdb_result_error(result: [*c]duckdb_result) [*c]const u8;
pub extern fn duckdb_result_error_type(result: [*c]duckdb_result) duckdb_error_type;
pub extern fn duckdb_result_get_chunk(result: duckdb_result, chunk_index: idx_t) duckdb_data_chunk;
pub extern fn duckdb_result_is_streaming(result: duckdb_result) bool;
pub extern fn duckdb_result_chunk_count(result: duckdb_result) idx_t;
pub extern fn duckdb_result_return_type(result: duckdb_result) duckdb_result_type;
pub extern fn duckdb_value_boolean(result: [*c]duckdb_result, col: idx_t, row: idx_t) bool;
pub extern fn duckdb_value_int8(result: [*c]duckdb_result, col: idx_t, row: idx_t) i8;
pub extern fn duckdb_value_int16(result: [*c]duckdb_result, col: idx_t, row: idx_t) i16;
pub extern fn duckdb_value_int32(result: [*c]duckdb_result, col: idx_t, row: idx_t) i32;
pub extern fn duckdb_value_int64(result: [*c]duckdb_result, col: idx_t, row: idx_t) i64;
pub extern fn duckdb_value_hugeint(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_hugeint;
pub extern fn duckdb_value_uhugeint(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_uhugeint;
pub extern fn duckdb_value_decimal(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_decimal;
pub extern fn duckdb_value_uint8(result: [*c]duckdb_result, col: idx_t, row: idx_t) u8;
pub extern fn duckdb_value_uint16(result: [*c]duckdb_result, col: idx_t, row: idx_t) u16;
pub extern fn duckdb_value_uint32(result: [*c]duckdb_result, col: idx_t, row: idx_t) u32;
pub extern fn duckdb_value_uint64(result: [*c]duckdb_result, col: idx_t, row: idx_t) u64;
pub extern fn duckdb_value_float(result: [*c]duckdb_result, col: idx_t, row: idx_t) f32;
pub extern fn duckdb_value_double(result: [*c]duckdb_result, col: idx_t, row: idx_t) f64;
pub extern fn duckdb_value_date(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_date;
pub extern fn duckdb_value_time(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_time;
pub extern fn duckdb_value_timestamp(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_timestamp;
pub extern fn duckdb_value_interval(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_interval;
pub extern fn duckdb_value_varchar(result: [*c]duckdb_result, col: idx_t, row: idx_t) [*c]u8;
pub extern fn duckdb_value_string(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_string;
pub extern fn duckdb_value_varchar_internal(result: [*c]duckdb_result, col: idx_t, row: idx_t) [*c]u8;
pub extern fn duckdb_value_string_internal(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_string;
pub extern fn duckdb_value_blob(result: [*c]duckdb_result, col: idx_t, row: idx_t) duckdb_blob;
pub extern fn duckdb_value_is_null(result: [*c]duckdb_result, col: idx_t, row: idx_t) bool;
pub extern fn duckdb_malloc(size: usize) ?*anyopaque;
pub extern fn duckdb_free(ptr: ?*anyopaque) void;
pub extern fn duckdb_vector_size(...) idx_t;
pub extern fn duckdb_string_is_inlined(string: duckdb_string_t) bool;
pub extern fn duckdb_string_t_length(string: duckdb_string_t) u32;
pub extern fn duckdb_string_t_data(string: [*c]duckdb_string_t) [*c]const u8;
pub extern fn duckdb_from_date(date: duckdb_date) duckdb_date_struct;
pub extern fn duckdb_to_date(date: duckdb_date_struct) duckdb_date;
pub extern fn duckdb_is_finite_date(date: duckdb_date) bool;
pub extern fn duckdb_from_time(time: duckdb_time) duckdb_time_struct;
pub extern fn duckdb_create_time_tz(micros: i64, offset: i32) duckdb_time_tz;
pub extern fn duckdb_from_time_tz(micros: duckdb_time_tz) duckdb_time_tz_struct;
pub extern fn duckdb_to_time(time: duckdb_time_struct) duckdb_time;
pub extern fn duckdb_from_timestamp(ts: duckdb_timestamp) duckdb_timestamp_struct;
pub extern fn duckdb_to_timestamp(ts: duckdb_timestamp_struct) duckdb_timestamp;
pub extern fn duckdb_is_finite_timestamp(ts: duckdb_timestamp) bool;
pub extern fn duckdb_is_finite_timestamp_s(ts: duckdb_timestamp_s) bool;
pub extern fn duckdb_is_finite_timestamp_ms(ts: duckdb_timestamp_ms) bool;
pub extern fn duckdb_is_finite_timestamp_ns(ts: duckdb_timestamp_ns) bool;
pub extern fn duckdb_hugeint_to_double(val: duckdb_hugeint) f64;
pub extern fn duckdb_double_to_hugeint(val: f64) duckdb_hugeint;
pub extern fn duckdb_uhugeint_to_double(val: duckdb_uhugeint) f64;
pub extern fn duckdb_double_to_uhugeint(val: f64) duckdb_uhugeint;
pub extern fn duckdb_double_to_decimal(val: f64, width: u8, scale: u8) duckdb_decimal;
pub extern fn duckdb_decimal_to_double(val: duckdb_decimal) f64;
pub extern fn duckdb_prepare(connection: duckdb_connection, query: [*c]const u8, out_prepared_statement: [*c]duckdb_prepared_statement) duckdb_state;
pub extern fn duckdb_destroy_prepare(prepared_statement: [*c]duckdb_prepared_statement) void;
pub extern fn duckdb_prepare_error(prepared_statement: duckdb_prepared_statement) [*c]const u8;
pub extern fn duckdb_nparams(prepared_statement: duckdb_prepared_statement) idx_t;
pub extern fn duckdb_parameter_name(prepared_statement: duckdb_prepared_statement, index: idx_t) [*c]const u8;
pub extern fn duckdb_param_type(prepared_statement: duckdb_prepared_statement, param_idx: idx_t) duckdb_type;
pub extern fn duckdb_param_logical_type(prepared_statement: duckdb_prepared_statement, param_idx: idx_t) duckdb_logical_type;
pub extern fn duckdb_clear_bindings(prepared_statement: duckdb_prepared_statement) duckdb_state;
pub extern fn duckdb_prepared_statement_type(statement: duckdb_prepared_statement) duckdb_statement_type;
pub extern fn duckdb_bind_value(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_value) duckdb_state;
pub extern fn duckdb_bind_parameter_index(prepared_statement: duckdb_prepared_statement, param_idx_out: [*c]idx_t, name: [*c]const u8) duckdb_state;
pub extern fn duckdb_bind_boolean(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: bool) duckdb_state;
pub extern fn duckdb_bind_int8(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i8) duckdb_state;
pub extern fn duckdb_bind_int16(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i16) duckdb_state;
pub extern fn duckdb_bind_int32(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i32) duckdb_state;
pub extern fn duckdb_bind_int64(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i64) duckdb_state;
pub extern fn duckdb_bind_hugeint(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_hugeint) duckdb_state;
pub extern fn duckdb_bind_uhugeint(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_uhugeint) duckdb_state;
pub extern fn duckdb_bind_decimal(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_decimal) duckdb_state;
pub extern fn duckdb_bind_uint8(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u8) duckdb_state;
pub extern fn duckdb_bind_uint16(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u16) duckdb_state;
pub extern fn duckdb_bind_uint32(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u32) duckdb_state;
pub extern fn duckdb_bind_uint64(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u64) duckdb_state;
pub extern fn duckdb_bind_float(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: f32) duckdb_state;
pub extern fn duckdb_bind_double(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: f64) duckdb_state;
pub extern fn duckdb_bind_date(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_date) duckdb_state;
pub extern fn duckdb_bind_time(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_time) duckdb_state;
pub extern fn duckdb_bind_timestamp(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_timestamp) duckdb_state;
pub extern fn duckdb_bind_timestamp_tz(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_timestamp) duckdb_state;
pub extern fn duckdb_bind_interval(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_interval) duckdb_state;
pub extern fn duckdb_bind_varchar(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: [*c]const u8) duckdb_state;
pub extern fn duckdb_bind_varchar_length(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: [*c]const u8, length: idx_t) duckdb_state;
pub extern fn duckdb_bind_blob(prepared_statement: duckdb_prepared_statement, param_idx: idx_t, data: ?*const anyopaque, length: idx_t) duckdb_state;
pub extern fn duckdb_bind_null(prepared_statement: duckdb_prepared_statement, param_idx: idx_t) duckdb_state;
pub extern fn duckdb_execute_prepared(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_execute_prepared_streaming(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_extract_statements(connection: duckdb_connection, query: [*c]const u8, out_extracted_statements: [*c]duckdb_extracted_statements) idx_t;
pub extern fn duckdb_prepare_extracted_statement(connection: duckdb_connection, extracted_statements: duckdb_extracted_statements, index: idx_t, out_prepared_statement: [*c]duckdb_prepared_statement) duckdb_state;
pub extern fn duckdb_extract_statements_error(extracted_statements: duckdb_extracted_statements) [*c]const u8;
pub extern fn duckdb_destroy_extracted(extracted_statements: [*c]duckdb_extracted_statements) void;
pub extern fn duckdb_pending_prepared(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_pending_result) duckdb_state;
pub extern fn duckdb_pending_prepared_streaming(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_pending_result) duckdb_state;
pub extern fn duckdb_destroy_pending(pending_result: [*c]duckdb_pending_result) void;
pub extern fn duckdb_pending_error(pending_result: duckdb_pending_result) [*c]const u8;
pub extern fn duckdb_pending_execute_task(pending_result: duckdb_pending_result) duckdb_pending_state;
pub extern fn duckdb_pending_execute_check_state(pending_result: duckdb_pending_result) duckdb_pending_state;
pub extern fn duckdb_execute_pending(pending_result: duckdb_pending_result, out_result: [*c]duckdb_result) duckdb_state;
pub extern fn duckdb_pending_execution_is_finished(pending_state: duckdb_pending_state) bool;
pub extern fn duckdb_destroy_value(value: [*c]duckdb_value) void;
pub extern fn duckdb_create_varchar(text: [*c]const u8) duckdb_value;
pub extern fn duckdb_create_varchar_length(text: [*c]const u8, length: idx_t) duckdb_value;
pub extern fn duckdb_create_bool(input: bool) duckdb_value;
pub extern fn duckdb_create_int8(input: i8) duckdb_value;
pub extern fn duckdb_create_uint8(input: u8) duckdb_value;
pub extern fn duckdb_create_int16(input: i16) duckdb_value;
pub extern fn duckdb_create_uint16(input: u16) duckdb_value;
pub extern fn duckdb_create_int32(input: i32) duckdb_value;
pub extern fn duckdb_create_uint32(input: u32) duckdb_value;
pub extern fn duckdb_create_uint64(input: u64) duckdb_value;
pub extern fn duckdb_create_int64(val: i64) duckdb_value;
pub extern fn duckdb_create_hugeint(input: duckdb_hugeint) duckdb_value;
pub extern fn duckdb_create_uhugeint(input: duckdb_uhugeint) duckdb_value;
pub extern fn duckdb_create_varint(input: duckdb_varint) duckdb_value;
pub extern fn duckdb_create_decimal(input: duckdb_decimal) duckdb_value;
pub extern fn duckdb_create_float(input: f32) duckdb_value;
pub extern fn duckdb_create_double(input: f64) duckdb_value;
pub extern fn duckdb_create_date(input: duckdb_date) duckdb_value;
pub extern fn duckdb_create_time(input: duckdb_time) duckdb_value;
pub extern fn duckdb_create_time_tz_value(value: duckdb_time_tz) duckdb_value;
pub extern fn duckdb_create_timestamp(input: duckdb_timestamp) duckdb_value;
pub extern fn duckdb_create_timestamp_tz(input: duckdb_timestamp) duckdb_value;
pub extern fn duckdb_create_timestamp_s(input: duckdb_timestamp_s) duckdb_value;
pub extern fn duckdb_create_timestamp_ms(input: duckdb_timestamp_ms) duckdb_value;
pub extern fn duckdb_create_timestamp_ns(input: duckdb_timestamp_ns) duckdb_value;
pub extern fn duckdb_create_interval(input: duckdb_interval) duckdb_value;
pub extern fn duckdb_create_blob(data: [*c]const u8, length: idx_t) duckdb_value;
pub extern fn duckdb_create_bit(input: duckdb_bit) duckdb_value;
pub extern fn duckdb_create_uuid(input: duckdb_uhugeint) duckdb_value;
pub extern fn duckdb_get_bool(val: duckdb_value) bool;
pub extern fn duckdb_get_int8(val: duckdb_value) i8;
pub extern fn duckdb_get_uint8(val: duckdb_value) u8;
pub extern fn duckdb_get_int16(val: duckdb_value) i16;
pub extern fn duckdb_get_uint16(val: duckdb_value) u16;
pub extern fn duckdb_get_int32(val: duckdb_value) i32;
pub extern fn duckdb_get_uint32(val: duckdb_value) u32;
pub extern fn duckdb_get_int64(val: duckdb_value) i64;
pub extern fn duckdb_get_uint64(val: duckdb_value) u64;
pub extern fn duckdb_get_hugeint(val: duckdb_value) duckdb_hugeint;
pub extern fn duckdb_get_uhugeint(val: duckdb_value) duckdb_uhugeint;
pub extern fn duckdb_get_varint(val: duckdb_value) duckdb_varint;
pub extern fn duckdb_get_decimal(val: duckdb_value) duckdb_decimal;
pub extern fn duckdb_get_float(val: duckdb_value) f32;
pub extern fn duckdb_get_double(val: duckdb_value) f64;
pub extern fn duckdb_get_date(val: duckdb_value) duckdb_date;
pub extern fn duckdb_get_time(val: duckdb_value) duckdb_time;
pub extern fn duckdb_get_time_tz(val: duckdb_value) duckdb_time_tz;
pub extern fn duckdb_get_timestamp(val: duckdb_value) duckdb_timestamp;
pub extern fn duckdb_get_timestamp_tz(val: duckdb_value) duckdb_timestamp;
pub extern fn duckdb_get_timestamp_s(val: duckdb_value) duckdb_timestamp_s;
pub extern fn duckdb_get_timestamp_ms(val: duckdb_value) duckdb_timestamp_ms;
pub extern fn duckdb_get_timestamp_ns(val: duckdb_value) duckdb_timestamp_ns;
pub extern fn duckdb_get_interval(val: duckdb_value) duckdb_interval;
pub extern fn duckdb_get_value_type(val: duckdb_value) duckdb_logical_type;
pub extern fn duckdb_get_blob(val: duckdb_value) duckdb_blob;
pub extern fn duckdb_get_bit(val: duckdb_value) duckdb_bit;
pub extern fn duckdb_get_uuid(val: duckdb_value) duckdb_uhugeint;
pub extern fn duckdb_get_varchar(value: duckdb_value) [*c]u8;
pub extern fn duckdb_create_struct_value(@"type": duckdb_logical_type, values: [*c]duckdb_value) duckdb_value;
pub extern fn duckdb_create_list_value(@"type": duckdb_logical_type, values: [*c]duckdb_value, value_count: idx_t) duckdb_value;
pub extern fn duckdb_create_array_value(@"type": duckdb_logical_type, values: [*c]duckdb_value, value_count: idx_t) duckdb_value;
pub extern fn duckdb_get_map_size(value: duckdb_value) idx_t;
pub extern fn duckdb_get_map_key(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_get_map_value(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_is_null_value(value: duckdb_value) bool;
pub extern fn duckdb_create_null_value(...) duckdb_value;
pub extern fn duckdb_get_list_size(value: duckdb_value) idx_t;
pub extern fn duckdb_get_list_child(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_create_enum_value(@"type": duckdb_logical_type, value: u64) duckdb_value;
pub extern fn duckdb_get_enum_value(value: duckdb_value) u64;
pub extern fn duckdb_get_struct_child(value: duckdb_value, index: idx_t) duckdb_value;
pub extern fn duckdb_create_logical_type(@"type": duckdb_type) duckdb_logical_type;
pub extern fn duckdb_logical_type_get_alias(@"type": duckdb_logical_type) [*c]u8;
pub extern fn duckdb_logical_type_set_alias(@"type": duckdb_logical_type, alias: [*c]const u8) void;
pub extern fn duckdb_create_list_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_create_array_type(@"type": duckdb_logical_type, array_size: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_map_type(key_type: duckdb_logical_type, value_type: duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_create_union_type(member_types: [*c]duckdb_logical_type, member_names: [*c][*c]const u8, member_count: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_struct_type(member_types: [*c]duckdb_logical_type, member_names: [*c][*c]const u8, member_count: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_enum_type(member_names: [*c][*c]const u8, member_count: idx_t) duckdb_logical_type;
pub extern fn duckdb_create_decimal_type(width: u8, scale: u8) duckdb_logical_type;
pub extern fn duckdb_get_type_id(@"type": duckdb_logical_type) duckdb_type;
pub extern fn duckdb_decimal_width(@"type": duckdb_logical_type) u8;
pub extern fn duckdb_decimal_scale(@"type": duckdb_logical_type) u8;
pub extern fn duckdb_decimal_internal_type(@"type": duckdb_logical_type) duckdb_type;
pub extern fn duckdb_enum_internal_type(@"type": duckdb_logical_type) duckdb_type;
pub extern fn duckdb_enum_dictionary_size(@"type": duckdb_logical_type) u32;
pub extern fn duckdb_enum_dictionary_value(@"type": duckdb_logical_type, index: idx_t) [*c]u8;
pub extern fn duckdb_list_type_child_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_array_type_child_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_array_type_array_size(@"type": duckdb_logical_type) idx_t;
pub extern fn duckdb_map_type_key_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_map_type_value_type(@"type": duckdb_logical_type) duckdb_logical_type;
pub extern fn duckdb_struct_type_child_count(@"type": duckdb_logical_type) idx_t;
pub extern fn duckdb_struct_type_child_name(@"type": duckdb_logical_type, index: idx_t) [*c]u8;
pub extern fn duckdb_struct_type_child_type(@"type": duckdb_logical_type, index: idx_t) duckdb_logical_type;
pub extern fn duckdb_union_type_member_count(@"type": duckdb_logical_type) idx_t;
pub extern fn duckdb_union_type_member_name(@"type": duckdb_logical_type, index: idx_t) [*c]u8;
pub extern fn duckdb_union_type_member_type(@"type": duckdb_logical_type, index: idx_t) duckdb_logical_type;
pub extern fn duckdb_destroy_logical_type(@"type": [*c]duckdb_logical_type) void;
pub extern fn duckdb_register_logical_type(con: duckdb_connection, @"type": duckdb_logical_type, info: duckdb_create_type_info) duckdb_state;
pub extern fn duckdb_create_data_chunk(types: [*c]duckdb_logical_type, column_count: idx_t) duckdb_data_chunk;
pub extern fn duckdb_destroy_data_chunk(chunk: [*c]duckdb_data_chunk) void;
pub extern fn duckdb_data_chunk_reset(chunk: duckdb_data_chunk) void;
pub extern fn duckdb_data_chunk_get_column_count(chunk: duckdb_data_chunk) idx_t;
pub extern fn duckdb_data_chunk_get_vector(chunk: duckdb_data_chunk, col_idx: idx_t) duckdb_vector;
pub extern fn duckdb_data_chunk_get_size(chunk: duckdb_data_chunk) idx_t;
pub extern fn duckdb_data_chunk_set_size(chunk: duckdb_data_chunk, size: idx_t) void;
pub extern fn duckdb_vector_get_column_type(vector: duckdb_vector) duckdb_logical_type;
pub extern fn duckdb_vector_get_data(vector: duckdb_vector) ?*anyopaque;
pub extern fn duckdb_vector_get_validity(vector: duckdb_vector) [*c]u64;
pub extern fn duckdb_vector_ensure_validity_writable(vector: duckdb_vector) void;
pub extern fn duckdb_vector_assign_string_element(vector: duckdb_vector, index: idx_t, str: [*c]const u8) void;
pub extern fn duckdb_vector_assign_string_element_len(vector: duckdb_vector, index: idx_t, str: [*c]const u8, str_len: idx_t) void;
pub extern fn duckdb_list_vector_get_child(vector: duckdb_vector) duckdb_vector;
pub extern fn duckdb_list_vector_get_size(vector: duckdb_vector) idx_t;
pub extern fn duckdb_list_vector_set_size(vector: duckdb_vector, size: idx_t) duckdb_state;
pub extern fn duckdb_list_vector_reserve(vector: duckdb_vector, required_capacity: idx_t) duckdb_state;
pub extern fn duckdb_struct_vector_get_child(vector: duckdb_vector, index: idx_t) duckdb_vector;
pub extern fn duckdb_array_vector_get_child(vector: duckdb_vector) duckdb_vector;
pub extern fn duckdb_validity_row_is_valid(validity: [*c]u64, row: idx_t) bool;
pub extern fn duckdb_validity_set_row_validity(validity: [*c]u64, row: idx_t, valid: bool) void;
pub extern fn duckdb_validity_set_row_invalid(validity: [*c]u64, row: idx_t) void;
pub extern fn duckdb_validity_set_row_valid(validity: [*c]u64, row: idx_t) void;
pub extern fn duckdb_create_scalar_function(...) duckdb_scalar_function;
pub extern fn duckdb_destroy_scalar_function(scalar_function: [*c]duckdb_scalar_function) void;
pub extern fn duckdb_scalar_function_set_name(scalar_function: duckdb_scalar_function, name: [*c]const u8) void;
pub extern fn duckdb_scalar_function_set_varargs(scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_scalar_function_set_special_handling(scalar_function: duckdb_scalar_function) void;
pub extern fn duckdb_scalar_function_set_volatile(scalar_function: duckdb_scalar_function) void;
pub extern fn duckdb_scalar_function_add_parameter(scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_scalar_function_set_return_type(scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_scalar_function_set_extra_info(scalar_function: duckdb_scalar_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_scalar_function_set_function(scalar_function: duckdb_scalar_function, function: duckdb_scalar_function_t) void;
pub extern fn duckdb_register_scalar_function(con: duckdb_connection, scalar_function: duckdb_scalar_function) duckdb_state;
pub extern fn duckdb_scalar_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_scalar_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_create_scalar_function_set(name: [*c]const u8) duckdb_scalar_function_set;
pub extern fn duckdb_destroy_scalar_function_set(scalar_function_set: [*c]duckdb_scalar_function_set) void;
pub extern fn duckdb_add_scalar_function_to_set(set: duckdb_scalar_function_set, function: duckdb_scalar_function) duckdb_state;
pub extern fn duckdb_register_scalar_function_set(con: duckdb_connection, set: duckdb_scalar_function_set) duckdb_state;
pub extern fn duckdb_create_aggregate_function(...) duckdb_aggregate_function;
pub extern fn duckdb_destroy_aggregate_function(aggregate_function: [*c]duckdb_aggregate_function) void;
pub extern fn duckdb_aggregate_function_set_name(aggregate_function: duckdb_aggregate_function, name: [*c]const u8) void;
pub extern fn duckdb_aggregate_function_add_parameter(aggregate_function: duckdb_aggregate_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_aggregate_function_set_return_type(aggregate_function: duckdb_aggregate_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_aggregate_function_set_functions(aggregate_function: duckdb_aggregate_function, state_size: duckdb_aggregate_state_size, state_init: duckdb_aggregate_init_t, update: duckdb_aggregate_update_t, combine: duckdb_aggregate_combine_t, finalize: duckdb_aggregate_finalize_t) void;
pub extern fn duckdb_aggregate_function_set_destructor(aggregate_function: duckdb_aggregate_function, destroy: duckdb_aggregate_destroy_t) void;
pub extern fn duckdb_register_aggregate_function(con: duckdb_connection, aggregate_function: duckdb_aggregate_function) duckdb_state;
pub extern fn duckdb_aggregate_function_set_special_handling(aggregate_function: duckdb_aggregate_function) void;
pub extern fn duckdb_aggregate_function_set_extra_info(aggregate_function: duckdb_aggregate_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_aggregate_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_aggregate_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_create_aggregate_function_set(name: [*c]const u8) duckdb_aggregate_function_set;
pub extern fn duckdb_destroy_aggregate_function_set(aggregate_function_set: [*c]duckdb_aggregate_function_set) void;
pub extern fn duckdb_add_aggregate_function_to_set(set: duckdb_aggregate_function_set, function: duckdb_aggregate_function) duckdb_state;
pub extern fn duckdb_register_aggregate_function_set(con: duckdb_connection, set: duckdb_aggregate_function_set) duckdb_state;
pub extern fn duckdb_create_table_function(...) duckdb_table_function;
pub extern fn duckdb_destroy_table_function(table_function: [*c]duckdb_table_function) void;
pub extern fn duckdb_table_function_set_name(table_function: duckdb_table_function, name: [*c]const u8) void;
pub extern fn duckdb_table_function_add_parameter(table_function: duckdb_table_function, @"type": duckdb_logical_type) void;
pub extern fn duckdb_table_function_add_named_parameter(table_function: duckdb_table_function, name: [*c]const u8, @"type": duckdb_logical_type) void;
pub extern fn duckdb_table_function_set_extra_info(table_function: duckdb_table_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_table_function_set_bind(table_function: duckdb_table_function, bind: duckdb_table_function_bind_t) void;
pub extern fn duckdb_table_function_set_init(table_function: duckdb_table_function, init: duckdb_table_function_init_t) void;
pub extern fn duckdb_table_function_set_local_init(table_function: duckdb_table_function, init: duckdb_table_function_init_t) void;
pub extern fn duckdb_table_function_set_function(table_function: duckdb_table_function, function: duckdb_table_function_t) void;
pub extern fn duckdb_table_function_supports_projection_pushdown(table_function: duckdb_table_function, pushdown: bool) void;
pub extern fn duckdb_register_table_function(con: duckdb_connection, function: duckdb_table_function) duckdb_state;
pub extern fn duckdb_bind_get_extra_info(info: duckdb_bind_info) ?*anyopaque;
pub extern fn duckdb_bind_add_result_column(info: duckdb_bind_info, name: [*c]const u8, @"type": duckdb_logical_type) void;
pub extern fn duckdb_bind_get_parameter_count(info: duckdb_bind_info) idx_t;
pub extern fn duckdb_bind_get_parameter(info: duckdb_bind_info, index: idx_t) duckdb_value;
pub extern fn duckdb_bind_get_named_parameter(info: duckdb_bind_info, name: [*c]const u8) duckdb_value;
pub extern fn duckdb_bind_set_bind_data(info: duckdb_bind_info, bind_data: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_bind_set_cardinality(info: duckdb_bind_info, cardinality: idx_t, is_exact: bool) void;
pub extern fn duckdb_bind_set_error(info: duckdb_bind_info, @"error": [*c]const u8) void;
pub extern fn duckdb_init_get_extra_info(info: duckdb_init_info) ?*anyopaque;
pub extern fn duckdb_init_get_bind_data(info: duckdb_init_info) ?*anyopaque;
pub extern fn duckdb_init_set_init_data(info: duckdb_init_info, init_data: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_init_get_column_count(info: duckdb_init_info) idx_t;
pub extern fn duckdb_init_get_column_index(info: duckdb_init_info, column_index: idx_t) idx_t;
pub extern fn duckdb_init_set_max_threads(info: duckdb_init_info, max_threads: idx_t) void;
pub extern fn duckdb_init_set_error(info: duckdb_init_info, @"error": [*c]const u8) void;
pub extern fn duckdb_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_get_bind_data(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_get_init_data(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_get_local_init_data(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_add_replacement_scan(db: duckdb_database, replacement: duckdb_replacement_callback_t, extra_data: ?*anyopaque, delete_callback: duckdb_delete_callback_t) void;
pub extern fn duckdb_replacement_scan_set_function_name(info: duckdb_replacement_scan_info, function_name: [*c]const u8) void;
pub extern fn duckdb_replacement_scan_add_parameter(info: duckdb_replacement_scan_info, parameter: duckdb_value) void;
pub extern fn duckdb_replacement_scan_set_error(info: duckdb_replacement_scan_info, @"error": [*c]const u8) void;
pub extern fn duckdb_get_profiling_info(connection: duckdb_connection) duckdb_profiling_info;
pub extern fn duckdb_profiling_info_get_value(info: duckdb_profiling_info, key: [*c]const u8) duckdb_value;
pub extern fn duckdb_profiling_info_get_metrics(info: duckdb_profiling_info) duckdb_value;
pub extern fn duckdb_profiling_info_get_child_count(info: duckdb_profiling_info) idx_t;
pub extern fn duckdb_profiling_info_get_child(info: duckdb_profiling_info, index: idx_t) duckdb_profiling_info;
pub extern fn duckdb_appender_create(connection: duckdb_connection, schema: [*c]const u8, table: [*c]const u8, out_appender: [*c]duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_create_ext(connection: duckdb_connection, catalog: [*c]const u8, schema: [*c]const u8, table: [*c]const u8, out_appender: [*c]duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_column_count(appender: duckdb_appender) idx_t;
pub extern fn duckdb_appender_column_type(appender: duckdb_appender, col_idx: idx_t) duckdb_logical_type;
pub extern fn duckdb_appender_error(appender: duckdb_appender) [*c]const u8;
pub extern fn duckdb_appender_flush(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_close(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_destroy(appender: [*c]duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_add_column(appender: duckdb_appender, name: [*c]const u8) duckdb_state;
pub extern fn duckdb_appender_clear_columns(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_begin_row(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_appender_end_row(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_append_default(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_append_default_to_chunk(appender: duckdb_appender, chunk: duckdb_data_chunk, col: idx_t, row: idx_t) duckdb_state;
pub extern fn duckdb_append_bool(appender: duckdb_appender, value: bool) duckdb_state;
pub extern fn duckdb_append_int8(appender: duckdb_appender, value: i8) duckdb_state;
pub extern fn duckdb_append_int16(appender: duckdb_appender, value: i16) duckdb_state;
pub extern fn duckdb_append_int32(appender: duckdb_appender, value: i32) duckdb_state;
pub extern fn duckdb_append_int64(appender: duckdb_appender, value: i64) duckdb_state;
pub extern fn duckdb_append_hugeint(appender: duckdb_appender, value: duckdb_hugeint) duckdb_state;
pub extern fn duckdb_append_uint8(appender: duckdb_appender, value: u8) duckdb_state;
pub extern fn duckdb_append_uint16(appender: duckdb_appender, value: u16) duckdb_state;
pub extern fn duckdb_append_uint32(appender: duckdb_appender, value: u32) duckdb_state;
pub extern fn duckdb_append_uint64(appender: duckdb_appender, value: u64) duckdb_state;
pub extern fn duckdb_append_uhugeint(appender: duckdb_appender, value: duckdb_uhugeint) duckdb_state;
pub extern fn duckdb_append_float(appender: duckdb_appender, value: f32) duckdb_state;
pub extern fn duckdb_append_double(appender: duckdb_appender, value: f64) duckdb_state;
pub extern fn duckdb_append_date(appender: duckdb_appender, value: duckdb_date) duckdb_state;
pub extern fn duckdb_append_time(appender: duckdb_appender, value: duckdb_time) duckdb_state;
pub extern fn duckdb_append_timestamp(appender: duckdb_appender, value: duckdb_timestamp) duckdb_state;
pub extern fn duckdb_append_interval(appender: duckdb_appender, value: duckdb_interval) duckdb_state;
pub extern fn duckdb_append_varchar(appender: duckdb_appender, val: [*c]const u8) duckdb_state;
pub extern fn duckdb_append_varchar_length(appender: duckdb_appender, val: [*c]const u8, length: idx_t) duckdb_state;
pub extern fn duckdb_append_blob(appender: duckdb_appender, data: ?*const anyopaque, length: idx_t) duckdb_state;
pub extern fn duckdb_append_null(appender: duckdb_appender) duckdb_state;
pub extern fn duckdb_append_value(appender: duckdb_appender, value: duckdb_value) duckdb_state;
pub extern fn duckdb_append_data_chunk(appender: duckdb_appender, chunk: duckdb_data_chunk) duckdb_state;
pub extern fn duckdb_table_description_create(connection: duckdb_connection, schema: [*c]const u8, table: [*c]const u8, out: [*c]duckdb_table_description) duckdb_state;
pub extern fn duckdb_table_description_create_ext(connection: duckdb_connection, catalog: [*c]const u8, schema: [*c]const u8, table: [*c]const u8, out: [*c]duckdb_table_description) duckdb_state;
pub extern fn duckdb_table_description_destroy(table_description: [*c]duckdb_table_description) void;
pub extern fn duckdb_table_description_error(table_description: duckdb_table_description) [*c]const u8;
pub extern fn duckdb_column_has_default(table_description: duckdb_table_description, index: idx_t, out: [*c]bool) duckdb_state;
pub extern fn duckdb_table_description_get_column_name(table_description: duckdb_table_description, index: idx_t) [*c]u8;
pub extern fn duckdb_query_arrow(connection: duckdb_connection, query: [*c]const u8, out_result: [*c]duckdb_arrow) duckdb_state;
pub extern fn duckdb_query_arrow_schema(result: duckdb_arrow, out_schema: [*c]duckdb_arrow_schema) duckdb_state;
pub extern fn duckdb_prepared_arrow_schema(prepared: duckdb_prepared_statement, out_schema: [*c]duckdb_arrow_schema) duckdb_state;
pub extern fn duckdb_result_arrow_array(result: duckdb_result, chunk: duckdb_data_chunk, out_array: [*c]duckdb_arrow_array) void;
pub extern fn duckdb_query_arrow_array(result: duckdb_arrow, out_array: [*c]duckdb_arrow_array) duckdb_state;
pub extern fn duckdb_arrow_column_count(result: duckdb_arrow) idx_t;
pub extern fn duckdb_arrow_row_count(result: duckdb_arrow) idx_t;
pub extern fn duckdb_arrow_rows_changed(result: duckdb_arrow) idx_t;
pub extern fn duckdb_query_arrow_error(result: duckdb_arrow) [*c]const u8;
pub extern fn duckdb_destroy_arrow(result: [*c]duckdb_arrow) void;
pub extern fn duckdb_destroy_arrow_stream(stream_p: [*c]duckdb_arrow_stream) void;
pub extern fn duckdb_execute_prepared_arrow(prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_arrow) duckdb_state;
pub extern fn duckdb_arrow_scan(connection: duckdb_connection, table_name: [*c]const u8, arrow: duckdb_arrow_stream) duckdb_state;
pub extern fn duckdb_arrow_array_scan(connection: duckdb_connection, table_name: [*c]const u8, arrow_schema: duckdb_arrow_schema, arrow_array: duckdb_arrow_array, out_stream: [*c]duckdb_arrow_stream) duckdb_state;
pub extern fn duckdb_execute_tasks(database: duckdb_database, max_tasks: idx_t) void;
pub extern fn duckdb_create_task_state(database: duckdb_database) duckdb_task_state;
pub extern fn duckdb_execute_tasks_state(state: duckdb_task_state) void;
pub extern fn duckdb_execute_n_tasks_state(state: duckdb_task_state, max_tasks: idx_t) idx_t;
pub extern fn duckdb_finish_execution(state: duckdb_task_state) void;
pub extern fn duckdb_task_state_is_finished(state: duckdb_task_state) bool;
pub extern fn duckdb_destroy_task_state(state: duckdb_task_state) void;
pub extern fn duckdb_execution_is_finished(con: duckdb_connection) bool;
pub extern fn duckdb_stream_fetch_chunk(result: duckdb_result) duckdb_data_chunk;
pub extern fn duckdb_fetch_chunk(result: duckdb_result) duckdb_data_chunk;
pub extern fn duckdb_create_cast_function(...) duckdb_cast_function;
pub extern fn duckdb_cast_function_set_source_type(cast_function: duckdb_cast_function, source_type: duckdb_logical_type) void;
pub extern fn duckdb_cast_function_set_target_type(cast_function: duckdb_cast_function, target_type: duckdb_logical_type) void;
pub extern fn duckdb_cast_function_set_implicit_cast_cost(cast_function: duckdb_cast_function, cost: i64) void;
pub extern fn duckdb_cast_function_set_function(cast_function: duckdb_cast_function, function: duckdb_cast_function_t) void;
pub extern fn duckdb_cast_function_set_extra_info(cast_function: duckdb_cast_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) void;
pub extern fn duckdb_cast_function_get_extra_info(info: duckdb_function_info) ?*anyopaque;
pub extern fn duckdb_cast_function_get_cast_mode(info: duckdb_function_info) duckdb_cast_mode;
pub extern fn duckdb_cast_function_set_error(info: duckdb_function_info, @"error": [*c]const u8) void;
pub extern fn duckdb_cast_function_set_row_error(info: duckdb_function_info, @"error": [*c]const u8, row: idx_t, output: duckdb_vector) void;
pub extern fn duckdb_register_cast_function(con: duckdb_connection, cast_function: duckdb_cast_function) duckdb_state;
pub extern fn duckdb_destroy_cast_function(cast_function: [*c]duckdb_cast_function) void;
pub const duckdb_ext_api_v1 = extern struct {
    duckdb_open: ?*const fn (path: [*c]const u8, out_database: [*c]duckdb_database) callconv(.c) duckdb_state = null,
    duckdb_open_ext: ?*const fn (path: [*c]const u8, out_database: [*c]duckdb_database, config: duckdb_config, out_error: [*c][*c]u8) callconv(.c) duckdb_state = null,
    duckdb_close: ?*const fn (database: [*c]duckdb_database) callconv(.c) void = null,
    duckdb_connect: ?*const fn (database: duckdb_database, out_connection: [*c]duckdb_connection) callconv(.c) duckdb_state = null,
    duckdb_interrupt: ?*const fn (connection: duckdb_connection) callconv(.c) void = null,
    duckdb_query_progress: ?*const fn (connection: duckdb_connection) callconv(.c) duckdb_query_progress_type = null,
    duckdb_disconnect: ?*const fn (connection: [*c]duckdb_connection) callconv(.c) void = null,
    duckdb_library_version: ?*const fn (...) callconv(.c) [*c]const u8 = null,
    duckdb_create_config: ?*const fn (out_config: [*c]duckdb_config) callconv(.c) duckdb_state = null,
    duckdb_config_count: ?*const fn (...) callconv(.c) usize = null,
    duckdb_get_config_flag: ?*const fn (index: usize, out_name: [*c][*c]const u8, out_description: [*c][*c]const u8) callconv(.c) duckdb_state = null,
    duckdb_set_config: ?*const fn (config: duckdb_config, name: [*c]const u8, option: [*c]const u8) callconv(.c) duckdb_state = null,
    duckdb_destroy_config: ?*const fn (config: [*c]duckdb_config) callconv(.c) void = null,
    duckdb_query: ?*const fn (connection: duckdb_connection, query: [*c]const u8, out_result: [*c]duckdb_result) callconv(.c) duckdb_state = null,
    duckdb_destroy_result: ?*const fn (result: [*c]duckdb_result) callconv(.c) void = null,
    duckdb_column_name: ?*const fn (result: [*c]duckdb_result, col: idx_t) callconv(.c) [*c]const u8 = null,
    duckdb_column_type: ?*const fn (result: [*c]duckdb_result, col: idx_t) callconv(.c) duckdb_type = null,
    duckdb_result_statement_type: ?*const fn (result: duckdb_result) callconv(.c) duckdb_statement_type = null,
    duckdb_column_logical_type: ?*const fn (result: [*c]duckdb_result, col: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_column_count: ?*const fn (result: [*c]duckdb_result) callconv(.c) idx_t = null,
    duckdb_rows_changed: ?*const fn (result: [*c]duckdb_result) callconv(.c) idx_t = null,
    duckdb_result_error: ?*const fn (result: [*c]duckdb_result) callconv(.c) [*c]const u8 = null,
    duckdb_result_error_type: ?*const fn (result: [*c]duckdb_result) callconv(.c) duckdb_error_type = null,
    duckdb_result_return_type: ?*const fn (result: duckdb_result) callconv(.c) duckdb_result_type = null,
    duckdb_malloc: ?*const fn (size: usize) callconv(.c) ?*anyopaque = null,
    duckdb_free: ?*const fn (ptr: ?*anyopaque) callconv(.c) void = null,
    duckdb_vector_size: ?*const fn (...) callconv(.c) idx_t = null,
    duckdb_string_is_inlined: ?*const fn (string: duckdb_string_t) callconv(.c) bool = null,
    duckdb_string_t_length: ?*const fn (string: duckdb_string_t) callconv(.c) u32 = null,
    duckdb_string_t_data: ?*const fn (string: [*c]duckdb_string_t) callconv(.c) [*c]const u8 = null,
    duckdb_from_date: ?*const fn (date: duckdb_date) callconv(.c) duckdb_date_struct = null,
    duckdb_to_date: ?*const fn (date: duckdb_date_struct) callconv(.c) duckdb_date = null,
    duckdb_is_finite_date: ?*const fn (date: duckdb_date) callconv(.c) bool = null,
    duckdb_from_time: ?*const fn (time: duckdb_time) callconv(.c) duckdb_time_struct = null,
    duckdb_create_time_tz: ?*const fn (micros: i64, offset: i32) callconv(.c) duckdb_time_tz = null,
    duckdb_from_time_tz: ?*const fn (micros: duckdb_time_tz) callconv(.c) duckdb_time_tz_struct = null,
    duckdb_to_time: ?*const fn (time: duckdb_time_struct) callconv(.c) duckdb_time = null,
    duckdb_from_timestamp: ?*const fn (ts: duckdb_timestamp) callconv(.c) duckdb_timestamp_struct = null,
    duckdb_to_timestamp: ?*const fn (ts: duckdb_timestamp_struct) callconv(.c) duckdb_timestamp = null,
    duckdb_is_finite_timestamp: ?*const fn (ts: duckdb_timestamp) callconv(.c) bool = null,
    duckdb_hugeint_to_double: ?*const fn (val: duckdb_hugeint) callconv(.c) f64 = null,
    duckdb_double_to_hugeint: ?*const fn (val: f64) callconv(.c) duckdb_hugeint = null,
    duckdb_uhugeint_to_double: ?*const fn (val: duckdb_uhugeint) callconv(.c) f64 = null,
    duckdb_double_to_uhugeint: ?*const fn (val: f64) callconv(.c) duckdb_uhugeint = null,
    duckdb_double_to_decimal: ?*const fn (val: f64, width: u8, scale: u8) callconv(.c) duckdb_decimal = null,
    duckdb_decimal_to_double: ?*const fn (val: duckdb_decimal) callconv(.c) f64 = null,
    duckdb_prepare: ?*const fn (connection: duckdb_connection, query: [*c]const u8, out_prepared_statement: [*c]duckdb_prepared_statement) callconv(.c) duckdb_state = null,
    duckdb_destroy_prepare: ?*const fn (prepared_statement: [*c]duckdb_prepared_statement) callconv(.c) void = null,
    duckdb_prepare_error: ?*const fn (prepared_statement: duckdb_prepared_statement) callconv(.c) [*c]const u8 = null,
    duckdb_nparams: ?*const fn (prepared_statement: duckdb_prepared_statement) callconv(.c) idx_t = null,
    duckdb_parameter_name: ?*const fn (prepared_statement: duckdb_prepared_statement, index: idx_t) callconv(.c) [*c]const u8 = null,
    duckdb_param_type: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t) callconv(.c) duckdb_type = null,
    duckdb_param_logical_type: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_clear_bindings: ?*const fn (prepared_statement: duckdb_prepared_statement) callconv(.c) duckdb_state = null,
    duckdb_prepared_statement_type: ?*const fn (statement: duckdb_prepared_statement) callconv(.c) duckdb_statement_type = null,
    duckdb_bind_value: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_value) callconv(.c) duckdb_state = null,
    duckdb_bind_parameter_index: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx_out: [*c]idx_t, name: [*c]const u8) callconv(.c) duckdb_state = null,
    duckdb_bind_boolean: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: bool) callconv(.c) duckdb_state = null,
    duckdb_bind_int8: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i8) callconv(.c) duckdb_state = null,
    duckdb_bind_int16: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i16) callconv(.c) duckdb_state = null,
    duckdb_bind_int32: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i32) callconv(.c) duckdb_state = null,
    duckdb_bind_int64: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: i64) callconv(.c) duckdb_state = null,
    duckdb_bind_hugeint: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_hugeint) callconv(.c) duckdb_state = null,
    duckdb_bind_uhugeint: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_uhugeint) callconv(.c) duckdb_state = null,
    duckdb_bind_decimal: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_decimal) callconv(.c) duckdb_state = null,
    duckdb_bind_uint8: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u8) callconv(.c) duckdb_state = null,
    duckdb_bind_uint16: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u16) callconv(.c) duckdb_state = null,
    duckdb_bind_uint32: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u32) callconv(.c) duckdb_state = null,
    duckdb_bind_uint64: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: u64) callconv(.c) duckdb_state = null,
    duckdb_bind_float: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: f32) callconv(.c) duckdb_state = null,
    duckdb_bind_double: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: f64) callconv(.c) duckdb_state = null,
    duckdb_bind_date: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_date) callconv(.c) duckdb_state = null,
    duckdb_bind_time: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_time) callconv(.c) duckdb_state = null,
    duckdb_bind_timestamp: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_timestamp) callconv(.c) duckdb_state = null,
    duckdb_bind_timestamp_tz: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_timestamp) callconv(.c) duckdb_state = null,
    duckdb_bind_interval: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: duckdb_interval) callconv(.c) duckdb_state = null,
    duckdb_bind_varchar: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: [*c]const u8) callconv(.c) duckdb_state = null,
    duckdb_bind_varchar_length: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, val: [*c]const u8, length: idx_t) callconv(.c) duckdb_state = null,
    duckdb_bind_blob: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t, data: ?*const anyopaque, length: idx_t) callconv(.c) duckdb_state = null,
    duckdb_bind_null: ?*const fn (prepared_statement: duckdb_prepared_statement, param_idx: idx_t) callconv(.c) duckdb_state = null,
    duckdb_execute_prepared: ?*const fn (prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_result) callconv(.c) duckdb_state = null,
    duckdb_extract_statements: ?*const fn (connection: duckdb_connection, query: [*c]const u8, out_extracted_statements: [*c]duckdb_extracted_statements) callconv(.c) idx_t = null,
    duckdb_prepare_extracted_statement: ?*const fn (connection: duckdb_connection, extracted_statements: duckdb_extracted_statements, index: idx_t, out_prepared_statement: [*c]duckdb_prepared_statement) callconv(.c) duckdb_state = null,
    duckdb_extract_statements_error: ?*const fn (extracted_statements: duckdb_extracted_statements) callconv(.c) [*c]const u8 = null,
    duckdb_destroy_extracted: ?*const fn (extracted_statements: [*c]duckdb_extracted_statements) callconv(.c) void = null,
    duckdb_pending_prepared: ?*const fn (prepared_statement: duckdb_prepared_statement, out_result: [*c]duckdb_pending_result) callconv(.c) duckdb_state = null,
    duckdb_destroy_pending: ?*const fn (pending_result: [*c]duckdb_pending_result) callconv(.c) void = null,
    duckdb_pending_error: ?*const fn (pending_result: duckdb_pending_result) callconv(.c) [*c]const u8 = null,
    duckdb_pending_execute_task: ?*const fn (pending_result: duckdb_pending_result) callconv(.c) duckdb_pending_state = null,
    duckdb_pending_execute_check_state: ?*const fn (pending_result: duckdb_pending_result) callconv(.c) duckdb_pending_state = null,
    duckdb_execute_pending: ?*const fn (pending_result: duckdb_pending_result, out_result: [*c]duckdb_result) callconv(.c) duckdb_state = null,
    duckdb_pending_execution_is_finished: ?*const fn (pending_state: duckdb_pending_state) callconv(.c) bool = null,
    duckdb_destroy_value: ?*const fn (value: [*c]duckdb_value) callconv(.c) void = null,
    duckdb_create_varchar: ?*const fn (text: [*c]const u8) callconv(.c) duckdb_value = null,
    duckdb_create_varchar_length: ?*const fn (text: [*c]const u8, length: idx_t) callconv(.c) duckdb_value = null,
    duckdb_create_bool: ?*const fn (input: bool) callconv(.c) duckdb_value = null,
    duckdb_create_int8: ?*const fn (input: i8) callconv(.c) duckdb_value = null,
    duckdb_create_uint8: ?*const fn (input: u8) callconv(.c) duckdb_value = null,
    duckdb_create_int16: ?*const fn (input: i16) callconv(.c) duckdb_value = null,
    duckdb_create_uint16: ?*const fn (input: u16) callconv(.c) duckdb_value = null,
    duckdb_create_int32: ?*const fn (input: i32) callconv(.c) duckdb_value = null,
    duckdb_create_uint32: ?*const fn (input: u32) callconv(.c) duckdb_value = null,
    duckdb_create_uint64: ?*const fn (input: u64) callconv(.c) duckdb_value = null,
    duckdb_create_int64: ?*const fn (val: i64) callconv(.c) duckdb_value = null,
    duckdb_create_hugeint: ?*const fn (input: duckdb_hugeint) callconv(.c) duckdb_value = null,
    duckdb_create_uhugeint: ?*const fn (input: duckdb_uhugeint) callconv(.c) duckdb_value = null,
    duckdb_create_float: ?*const fn (input: f32) callconv(.c) duckdb_value = null,
    duckdb_create_double: ?*const fn (input: f64) callconv(.c) duckdb_value = null,
    duckdb_create_date: ?*const fn (input: duckdb_date) callconv(.c) duckdb_value = null,
    duckdb_create_time: ?*const fn (input: duckdb_time) callconv(.c) duckdb_value = null,
    duckdb_create_time_tz_value: ?*const fn (value: duckdb_time_tz) callconv(.c) duckdb_value = null,
    duckdb_create_timestamp: ?*const fn (input: duckdb_timestamp) callconv(.c) duckdb_value = null,
    duckdb_create_interval: ?*const fn (input: duckdb_interval) callconv(.c) duckdb_value = null,
    duckdb_create_blob: ?*const fn (data: [*c]const u8, length: idx_t) callconv(.c) duckdb_value = null,
    duckdb_create_varint: ?*const fn (input: duckdb_varint) callconv(.c) duckdb_value = null,
    duckdb_create_decimal: ?*const fn (input: duckdb_decimal) callconv(.c) duckdb_value = null,
    duckdb_create_bit: ?*const fn (input: duckdb_bit) callconv(.c) duckdb_value = null,
    duckdb_create_uuid: ?*const fn (input: duckdb_uhugeint) callconv(.c) duckdb_value = null,
    duckdb_get_bool: ?*const fn (val: duckdb_value) callconv(.c) bool = null,
    duckdb_get_int8: ?*const fn (val: duckdb_value) callconv(.c) i8 = null,
    duckdb_get_uint8: ?*const fn (val: duckdb_value) callconv(.c) u8 = null,
    duckdb_get_int16: ?*const fn (val: duckdb_value) callconv(.c) i16 = null,
    duckdb_get_uint16: ?*const fn (val: duckdb_value) callconv(.c) u16 = null,
    duckdb_get_int32: ?*const fn (val: duckdb_value) callconv(.c) i32 = null,
    duckdb_get_uint32: ?*const fn (val: duckdb_value) callconv(.c) u32 = null,
    duckdb_get_int64: ?*const fn (val: duckdb_value) callconv(.c) i64 = null,
    duckdb_get_uint64: ?*const fn (val: duckdb_value) callconv(.c) u64 = null,
    duckdb_get_hugeint: ?*const fn (val: duckdb_value) callconv(.c) duckdb_hugeint = null,
    duckdb_get_uhugeint: ?*const fn (val: duckdb_value) callconv(.c) duckdb_uhugeint = null,
    duckdb_get_float: ?*const fn (val: duckdb_value) callconv(.c) f32 = null,
    duckdb_get_double: ?*const fn (val: duckdb_value) callconv(.c) f64 = null,
    duckdb_get_date: ?*const fn (val: duckdb_value) callconv(.c) duckdb_date = null,
    duckdb_get_time: ?*const fn (val: duckdb_value) callconv(.c) duckdb_time = null,
    duckdb_get_time_tz: ?*const fn (val: duckdb_value) callconv(.c) duckdb_time_tz = null,
    duckdb_get_timestamp: ?*const fn (val: duckdb_value) callconv(.c) duckdb_timestamp = null,
    duckdb_get_interval: ?*const fn (val: duckdb_value) callconv(.c) duckdb_interval = null,
    duckdb_get_value_type: ?*const fn (val: duckdb_value) callconv(.c) duckdb_logical_type = null,
    duckdb_get_blob: ?*const fn (val: duckdb_value) callconv(.c) duckdb_blob = null,
    duckdb_get_varint: ?*const fn (val: duckdb_value) callconv(.c) duckdb_varint = null,
    duckdb_get_decimal: ?*const fn (val: duckdb_value) callconv(.c) duckdb_decimal = null,
    duckdb_get_bit: ?*const fn (val: duckdb_value) callconv(.c) duckdb_bit = null,
    duckdb_get_uuid: ?*const fn (val: duckdb_value) callconv(.c) duckdb_uhugeint = null,
    duckdb_get_varchar: ?*const fn (value: duckdb_value) callconv(.c) [*c]u8 = null,
    duckdb_create_struct_value: ?*const fn (@"type": duckdb_logical_type, values: [*c]duckdb_value) callconv(.c) duckdb_value = null,
    duckdb_create_list_value: ?*const fn (@"type": duckdb_logical_type, values: [*c]duckdb_value, value_count: idx_t) callconv(.c) duckdb_value = null,
    duckdb_create_array_value: ?*const fn (@"type": duckdb_logical_type, values: [*c]duckdb_value, value_count: idx_t) callconv(.c) duckdb_value = null,
    duckdb_get_map_size: ?*const fn (value: duckdb_value) callconv(.c) idx_t = null,
    duckdb_get_map_key: ?*const fn (value: duckdb_value, index: idx_t) callconv(.c) duckdb_value = null,
    duckdb_get_map_value: ?*const fn (value: duckdb_value, index: idx_t) callconv(.c) duckdb_value = null,
    duckdb_is_null_value: ?*const fn (value: duckdb_value) callconv(.c) bool = null,
    duckdb_create_null_value: ?*const fn (...) callconv(.c) duckdb_value = null,
    duckdb_get_list_size: ?*const fn (value: duckdb_value) callconv(.c) idx_t = null,
    duckdb_get_list_child: ?*const fn (value: duckdb_value, index: idx_t) callconv(.c) duckdb_value = null,
    duckdb_create_enum_value: ?*const fn (@"type": duckdb_logical_type, value: u64) callconv(.c) duckdb_value = null,
    duckdb_get_enum_value: ?*const fn (value: duckdb_value) callconv(.c) u64 = null,
    duckdb_get_struct_child: ?*const fn (value: duckdb_value, index: idx_t) callconv(.c) duckdb_value = null,
    duckdb_create_logical_type: ?*const fn (@"type": duckdb_type) callconv(.c) duckdb_logical_type = null,
    duckdb_logical_type_get_alias: ?*const fn (@"type": duckdb_logical_type) callconv(.c) [*c]u8 = null,
    duckdb_logical_type_set_alias: ?*const fn (@"type": duckdb_logical_type, alias: [*c]const u8) callconv(.c) void = null,
    duckdb_create_list_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_logical_type = null,
    duckdb_create_array_type: ?*const fn (@"type": duckdb_logical_type, array_size: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_create_map_type: ?*const fn (key_type: duckdb_logical_type, value_type: duckdb_logical_type) callconv(.c) duckdb_logical_type = null,
    duckdb_create_union_type: ?*const fn (member_types: [*c]duckdb_logical_type, member_names: [*c][*c]const u8, member_count: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_create_struct_type: ?*const fn (member_types: [*c]duckdb_logical_type, member_names: [*c][*c]const u8, member_count: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_create_enum_type: ?*const fn (member_names: [*c][*c]const u8, member_count: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_create_decimal_type: ?*const fn (width: u8, scale: u8) callconv(.c) duckdb_logical_type = null,
    duckdb_get_type_id: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_type = null,
    duckdb_decimal_width: ?*const fn (@"type": duckdb_logical_type) callconv(.c) u8 = null,
    duckdb_decimal_scale: ?*const fn (@"type": duckdb_logical_type) callconv(.c) u8 = null,
    duckdb_decimal_internal_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_type = null,
    duckdb_enum_internal_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_type = null,
    duckdb_enum_dictionary_size: ?*const fn (@"type": duckdb_logical_type) callconv(.c) u32 = null,
    duckdb_enum_dictionary_value: ?*const fn (@"type": duckdb_logical_type, index: idx_t) callconv(.c) [*c]u8 = null,
    duckdb_list_type_child_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_logical_type = null,
    duckdb_array_type_child_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_logical_type = null,
    duckdb_array_type_array_size: ?*const fn (@"type": duckdb_logical_type) callconv(.c) idx_t = null,
    duckdb_map_type_key_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_logical_type = null,
    duckdb_map_type_value_type: ?*const fn (@"type": duckdb_logical_type) callconv(.c) duckdb_logical_type = null,
    duckdb_struct_type_child_count: ?*const fn (@"type": duckdb_logical_type) callconv(.c) idx_t = null,
    duckdb_struct_type_child_name: ?*const fn (@"type": duckdb_logical_type, index: idx_t) callconv(.c) [*c]u8 = null,
    duckdb_struct_type_child_type: ?*const fn (@"type": duckdb_logical_type, index: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_union_type_member_count: ?*const fn (@"type": duckdb_logical_type) callconv(.c) idx_t = null,
    duckdb_union_type_member_name: ?*const fn (@"type": duckdb_logical_type, index: idx_t) callconv(.c) [*c]u8 = null,
    duckdb_union_type_member_type: ?*const fn (@"type": duckdb_logical_type, index: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_destroy_logical_type: ?*const fn (@"type": [*c]duckdb_logical_type) callconv(.c) void = null,
    duckdb_register_logical_type: ?*const fn (con: duckdb_connection, @"type": duckdb_logical_type, info: duckdb_create_type_info) callconv(.c) duckdb_state = null,
    duckdb_create_data_chunk: ?*const fn (types: [*c]duckdb_logical_type, column_count: idx_t) callconv(.c) duckdb_data_chunk = null,
    duckdb_destroy_data_chunk: ?*const fn (chunk: [*c]duckdb_data_chunk) callconv(.c) void = null,
    duckdb_data_chunk_reset: ?*const fn (chunk: duckdb_data_chunk) callconv(.c) void = null,
    duckdb_data_chunk_get_column_count: ?*const fn (chunk: duckdb_data_chunk) callconv(.c) idx_t = null,
    duckdb_data_chunk_get_vector: ?*const fn (chunk: duckdb_data_chunk, col_idx: idx_t) callconv(.c) duckdb_vector = null,
    duckdb_data_chunk_get_size: ?*const fn (chunk: duckdb_data_chunk) callconv(.c) idx_t = null,
    duckdb_data_chunk_set_size: ?*const fn (chunk: duckdb_data_chunk, size: idx_t) callconv(.c) void = null,
    duckdb_vector_get_column_type: ?*const fn (vector: duckdb_vector) callconv(.c) duckdb_logical_type = null,
    duckdb_vector_get_data: ?*const fn (vector: duckdb_vector) callconv(.c) ?*anyopaque = null,
    duckdb_vector_get_validity: ?*const fn (vector: duckdb_vector) callconv(.c) [*c]u64 = null,
    duckdb_vector_ensure_validity_writable: ?*const fn (vector: duckdb_vector) callconv(.c) void = null,
    duckdb_vector_assign_string_element: ?*const fn (vector: duckdb_vector, index: idx_t, str: [*c]const u8) callconv(.c) void = null,
    duckdb_vector_assign_string_element_len: ?*const fn (vector: duckdb_vector, index: idx_t, str: [*c]const u8, str_len: idx_t) callconv(.c) void = null,
    duckdb_list_vector_get_child: ?*const fn (vector: duckdb_vector) callconv(.c) duckdb_vector = null,
    duckdb_list_vector_get_size: ?*const fn (vector: duckdb_vector) callconv(.c) idx_t = null,
    duckdb_list_vector_set_size: ?*const fn (vector: duckdb_vector, size: idx_t) callconv(.c) duckdb_state = null,
    duckdb_list_vector_reserve: ?*const fn (vector: duckdb_vector, required_capacity: idx_t) callconv(.c) duckdb_state = null,
    duckdb_struct_vector_get_child: ?*const fn (vector: duckdb_vector, index: idx_t) callconv(.c) duckdb_vector = null,
    duckdb_array_vector_get_child: ?*const fn (vector: duckdb_vector) callconv(.c) duckdb_vector = null,
    duckdb_validity_row_is_valid: ?*const fn (validity: [*c]u64, row: idx_t) callconv(.c) bool = null,
    duckdb_validity_set_row_validity: ?*const fn (validity: [*c]u64, row: idx_t, valid: bool) callconv(.c) void = null,
    duckdb_validity_set_row_invalid: ?*const fn (validity: [*c]u64, row: idx_t) callconv(.c) void = null,
    duckdb_validity_set_row_valid: ?*const fn (validity: [*c]u64, row: idx_t) callconv(.c) void = null,
    duckdb_create_scalar_function: ?*const fn (...) callconv(.c) duckdb_scalar_function = null,
    duckdb_destroy_scalar_function: ?*const fn (scalar_function: [*c]duckdb_scalar_function) callconv(.c) void = null,
    duckdb_scalar_function_set_name: ?*const fn (scalar_function: duckdb_scalar_function, name: [*c]const u8) callconv(.c) void = null,
    duckdb_scalar_function_set_varargs: ?*const fn (scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_scalar_function_set_special_handling: ?*const fn (scalar_function: duckdb_scalar_function) callconv(.c) void = null,
    duckdb_scalar_function_set_volatile: ?*const fn (scalar_function: duckdb_scalar_function) callconv(.c) void = null,
    duckdb_scalar_function_add_parameter: ?*const fn (scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_scalar_function_set_return_type: ?*const fn (scalar_function: duckdb_scalar_function, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_scalar_function_set_extra_info: ?*const fn (scalar_function: duckdb_scalar_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_scalar_function_set_function: ?*const fn (scalar_function: duckdb_scalar_function, function: duckdb_scalar_function_t) callconv(.c) void = null,
    duckdb_register_scalar_function: ?*const fn (con: duckdb_connection, scalar_function: duckdb_scalar_function) callconv(.c) duckdb_state = null,
    duckdb_scalar_function_get_extra_info: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_scalar_function_set_error: ?*const fn (info: duckdb_function_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_create_scalar_function_set: ?*const fn (name: [*c]const u8) callconv(.c) duckdb_scalar_function_set = null,
    duckdb_destroy_scalar_function_set: ?*const fn (scalar_function_set: [*c]duckdb_scalar_function_set) callconv(.c) void = null,
    duckdb_add_scalar_function_to_set: ?*const fn (set: duckdb_scalar_function_set, function: duckdb_scalar_function) callconv(.c) duckdb_state = null,
    duckdb_register_scalar_function_set: ?*const fn (con: duckdb_connection, set: duckdb_scalar_function_set) callconv(.c) duckdb_state = null,
    duckdb_create_aggregate_function: ?*const fn (...) callconv(.c) duckdb_aggregate_function = null,
    duckdb_destroy_aggregate_function: ?*const fn (aggregate_function: [*c]duckdb_aggregate_function) callconv(.c) void = null,
    duckdb_aggregate_function_set_name: ?*const fn (aggregate_function: duckdb_aggregate_function, name: [*c]const u8) callconv(.c) void = null,
    duckdb_aggregate_function_add_parameter: ?*const fn (aggregate_function: duckdb_aggregate_function, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_aggregate_function_set_return_type: ?*const fn (aggregate_function: duckdb_aggregate_function, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_aggregate_function_set_functions: ?*const fn (aggregate_function: duckdb_aggregate_function, state_size: duckdb_aggregate_state_size, state_init: duckdb_aggregate_init_t, update: duckdb_aggregate_update_t, combine: duckdb_aggregate_combine_t, finalize: duckdb_aggregate_finalize_t) callconv(.c) void = null,
    duckdb_aggregate_function_set_destructor: ?*const fn (aggregate_function: duckdb_aggregate_function, destroy: duckdb_aggregate_destroy_t) callconv(.c) void = null,
    duckdb_register_aggregate_function: ?*const fn (con: duckdb_connection, aggregate_function: duckdb_aggregate_function) callconv(.c) duckdb_state = null,
    duckdb_aggregate_function_set_special_handling: ?*const fn (aggregate_function: duckdb_aggregate_function) callconv(.c) void = null,
    duckdb_aggregate_function_set_extra_info: ?*const fn (aggregate_function: duckdb_aggregate_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_aggregate_function_get_extra_info: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_aggregate_function_set_error: ?*const fn (info: duckdb_function_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_create_aggregate_function_set: ?*const fn (name: [*c]const u8) callconv(.c) duckdb_aggregate_function_set = null,
    duckdb_destroy_aggregate_function_set: ?*const fn (aggregate_function_set: [*c]duckdb_aggregate_function_set) callconv(.c) void = null,
    duckdb_add_aggregate_function_to_set: ?*const fn (set: duckdb_aggregate_function_set, function: duckdb_aggregate_function) callconv(.c) duckdb_state = null,
    duckdb_register_aggregate_function_set: ?*const fn (con: duckdb_connection, set: duckdb_aggregate_function_set) callconv(.c) duckdb_state = null,
    duckdb_create_table_function: ?*const fn (...) callconv(.c) duckdb_table_function = null,
    duckdb_destroy_table_function: ?*const fn (table_function: [*c]duckdb_table_function) callconv(.c) void = null,
    duckdb_table_function_set_name: ?*const fn (table_function: duckdb_table_function, name: [*c]const u8) callconv(.c) void = null,
    duckdb_table_function_add_parameter: ?*const fn (table_function: duckdb_table_function, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_table_function_add_named_parameter: ?*const fn (table_function: duckdb_table_function, name: [*c]const u8, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_table_function_set_extra_info: ?*const fn (table_function: duckdb_table_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_table_function_set_bind: ?*const fn (table_function: duckdb_table_function, bind: duckdb_table_function_bind_t) callconv(.c) void = null,
    duckdb_table_function_set_init: ?*const fn (table_function: duckdb_table_function, init: duckdb_table_function_init_t) callconv(.c) void = null,
    duckdb_table_function_set_local_init: ?*const fn (table_function: duckdb_table_function, init: duckdb_table_function_init_t) callconv(.c) void = null,
    duckdb_table_function_set_function: ?*const fn (table_function: duckdb_table_function, function: duckdb_table_function_t) callconv(.c) void = null,
    duckdb_table_function_supports_projection_pushdown: ?*const fn (table_function: duckdb_table_function, pushdown: bool) callconv(.c) void = null,
    duckdb_register_table_function: ?*const fn (con: duckdb_connection, function: duckdb_table_function) callconv(.c) duckdb_state = null,
    duckdb_bind_get_extra_info: ?*const fn (info: duckdb_bind_info) callconv(.c) ?*anyopaque = null,
    duckdb_bind_add_result_column: ?*const fn (info: duckdb_bind_info, name: [*c]const u8, @"type": duckdb_logical_type) callconv(.c) void = null,
    duckdb_bind_get_parameter_count: ?*const fn (info: duckdb_bind_info) callconv(.c) idx_t = null,
    duckdb_bind_get_parameter: ?*const fn (info: duckdb_bind_info, index: idx_t) callconv(.c) duckdb_value = null,
    duckdb_bind_get_named_parameter: ?*const fn (info: duckdb_bind_info, name: [*c]const u8) callconv(.c) duckdb_value = null,
    duckdb_bind_set_bind_data: ?*const fn (info: duckdb_bind_info, bind_data: ?*anyopaque, destroy: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_bind_set_cardinality: ?*const fn (info: duckdb_bind_info, cardinality: idx_t, is_exact: bool) callconv(.c) void = null,
    duckdb_bind_set_error: ?*const fn (info: duckdb_bind_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_init_get_extra_info: ?*const fn (info: duckdb_init_info) callconv(.c) ?*anyopaque = null,
    duckdb_init_get_bind_data: ?*const fn (info: duckdb_init_info) callconv(.c) ?*anyopaque = null,
    duckdb_init_set_init_data: ?*const fn (info: duckdb_init_info, init_data: ?*anyopaque, destroy: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_init_get_column_count: ?*const fn (info: duckdb_init_info) callconv(.c) idx_t = null,
    duckdb_init_get_column_index: ?*const fn (info: duckdb_init_info, column_index: idx_t) callconv(.c) idx_t = null,
    duckdb_init_set_max_threads: ?*const fn (info: duckdb_init_info, max_threads: idx_t) callconv(.c) void = null,
    duckdb_init_set_error: ?*const fn (info: duckdb_init_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_function_get_extra_info: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_function_get_bind_data: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_function_get_init_data: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_function_get_local_init_data: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_function_set_error: ?*const fn (info: duckdb_function_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_add_replacement_scan: ?*const fn (db: duckdb_database, replacement: duckdb_replacement_callback_t, extra_data: ?*anyopaque, delete_callback: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_replacement_scan_set_function_name: ?*const fn (info: duckdb_replacement_scan_info, function_name: [*c]const u8) callconv(.c) void = null,
    duckdb_replacement_scan_add_parameter: ?*const fn (info: duckdb_replacement_scan_info, parameter: duckdb_value) callconv(.c) void = null,
    duckdb_replacement_scan_set_error: ?*const fn (info: duckdb_replacement_scan_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_profiling_info_get_metrics: ?*const fn (info: duckdb_profiling_info) callconv(.c) duckdb_value = null,
    duckdb_profiling_info_get_child_count: ?*const fn (info: duckdb_profiling_info) callconv(.c) idx_t = null,
    duckdb_profiling_info_get_child: ?*const fn (info: duckdb_profiling_info, index: idx_t) callconv(.c) duckdb_profiling_info = null,
    duckdb_appender_create: ?*const fn (connection: duckdb_connection, schema: [*c]const u8, table: [*c]const u8, out_appender: [*c]duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_appender_create_ext: ?*const fn (connection: duckdb_connection, catalog: [*c]const u8, schema: [*c]const u8, table: [*c]const u8, out_appender: [*c]duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_appender_column_count: ?*const fn (appender: duckdb_appender) callconv(.c) idx_t = null,
    duckdb_appender_column_type: ?*const fn (appender: duckdb_appender, col_idx: idx_t) callconv(.c) duckdb_logical_type = null,
    duckdb_appender_error: ?*const fn (appender: duckdb_appender) callconv(.c) [*c]const u8 = null,
    duckdb_appender_flush: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_appender_close: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_appender_destroy: ?*const fn (appender: [*c]duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_appender_add_column: ?*const fn (appender: duckdb_appender, name: [*c]const u8) callconv(.c) duckdb_state = null,
    duckdb_appender_clear_columns: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_append_data_chunk: ?*const fn (appender: duckdb_appender, chunk: duckdb_data_chunk) callconv(.c) duckdb_state = null,
    duckdb_table_description_create: ?*const fn (connection: duckdb_connection, schema: [*c]const u8, table: [*c]const u8, out: [*c]duckdb_table_description) callconv(.c) duckdb_state = null,
    duckdb_table_description_create_ext: ?*const fn (connection: duckdb_connection, catalog: [*c]const u8, schema: [*c]const u8, table: [*c]const u8, out: [*c]duckdb_table_description) callconv(.c) duckdb_state = null,
    duckdb_table_description_destroy: ?*const fn (table_description: [*c]duckdb_table_description) callconv(.c) void = null,
    duckdb_table_description_error: ?*const fn (table_description: duckdb_table_description) callconv(.c) [*c]const u8 = null,
    duckdb_column_has_default: ?*const fn (table_description: duckdb_table_description, index: idx_t, out: [*c]bool) callconv(.c) duckdb_state = null,
    duckdb_table_description_get_column_name: ?*const fn (table_description: duckdb_table_description, index: idx_t) callconv(.c) [*c]u8 = null,
    duckdb_execute_tasks: ?*const fn (database: duckdb_database, max_tasks: idx_t) callconv(.c) void = null,
    duckdb_create_task_state: ?*const fn (database: duckdb_database) callconv(.c) duckdb_task_state = null,
    duckdb_execute_tasks_state: ?*const fn (state: duckdb_task_state) callconv(.c) void = null,
    duckdb_execute_n_tasks_state: ?*const fn (state: duckdb_task_state, max_tasks: idx_t) callconv(.c) idx_t = null,
    duckdb_finish_execution: ?*const fn (state: duckdb_task_state) callconv(.c) void = null,
    duckdb_task_state_is_finished: ?*const fn (state: duckdb_task_state) callconv(.c) bool = null,
    duckdb_destroy_task_state: ?*const fn (state: duckdb_task_state) callconv(.c) void = null,
    duckdb_execution_is_finished: ?*const fn (con: duckdb_connection) callconv(.c) bool = null,
    duckdb_fetch_chunk: ?*const fn (result: duckdb_result) callconv(.c) duckdb_data_chunk = null,
    duckdb_create_cast_function: ?*const fn (...) callconv(.c) duckdb_cast_function = null,
    duckdb_cast_function_set_source_type: ?*const fn (cast_function: duckdb_cast_function, source_type: duckdb_logical_type) callconv(.c) void = null,
    duckdb_cast_function_set_target_type: ?*const fn (cast_function: duckdb_cast_function, target_type: duckdb_logical_type) callconv(.c) void = null,
    duckdb_cast_function_set_implicit_cast_cost: ?*const fn (cast_function: duckdb_cast_function, cost: i64) callconv(.c) void = null,
    duckdb_cast_function_set_function: ?*const fn (cast_function: duckdb_cast_function, function: duckdb_cast_function_t) callconv(.c) void = null,
    duckdb_cast_function_set_extra_info: ?*const fn (cast_function: duckdb_cast_function, extra_info: ?*anyopaque, destroy: duckdb_delete_callback_t) callconv(.c) void = null,
    duckdb_cast_function_get_extra_info: ?*const fn (info: duckdb_function_info) callconv(.c) ?*anyopaque = null,
    duckdb_cast_function_get_cast_mode: ?*const fn (info: duckdb_function_info) callconv(.c) duckdb_cast_mode = null,
    duckdb_cast_function_set_error: ?*const fn (info: duckdb_function_info, @"error": [*c]const u8) callconv(.c) void = null,
    duckdb_cast_function_set_row_error: ?*const fn (info: duckdb_function_info, @"error": [*c]const u8, row: idx_t, output: duckdb_vector) callconv(.c) void = null,
    duckdb_register_cast_function: ?*const fn (con: duckdb_connection, cast_function: duckdb_cast_function) callconv(.c) duckdb_state = null,
    duckdb_destroy_cast_function: ?*const fn (cast_function: [*c]duckdb_cast_function) callconv(.c) void = null,
    duckdb_is_finite_timestamp_s: ?*const fn (ts: duckdb_timestamp_s) callconv(.c) bool = null,
    duckdb_is_finite_timestamp_ms: ?*const fn (ts: duckdb_timestamp_ms) callconv(.c) bool = null,
    duckdb_is_finite_timestamp_ns: ?*const fn (ts: duckdb_timestamp_ns) callconv(.c) bool = null,
    duckdb_create_timestamp_tz: ?*const fn (input: duckdb_timestamp) callconv(.c) duckdb_value = null,
    duckdb_create_timestamp_s: ?*const fn (input: duckdb_timestamp_s) callconv(.c) duckdb_value = null,
    duckdb_create_timestamp_ms: ?*const fn (input: duckdb_timestamp_ms) callconv(.c) duckdb_value = null,
    duckdb_create_timestamp_ns: ?*const fn (input: duckdb_timestamp_ns) callconv(.c) duckdb_value = null,
    duckdb_get_timestamp_tz: ?*const fn (val: duckdb_value) callconv(.c) duckdb_timestamp = null,
    duckdb_get_timestamp_s: ?*const fn (val: duckdb_value) callconv(.c) duckdb_timestamp_s = null,
    duckdb_get_timestamp_ms: ?*const fn (val: duckdb_value) callconv(.c) duckdb_timestamp_ms = null,
    duckdb_get_timestamp_ns: ?*const fn (val: duckdb_value) callconv(.c) duckdb_timestamp_ns = null,
    duckdb_append_value: ?*const fn (appender: duckdb_appender, value: duckdb_value) callconv(.c) duckdb_state = null,
    duckdb_get_profiling_info: ?*const fn (connection: duckdb_connection) callconv(.c) duckdb_profiling_info = null,
    duckdb_profiling_info_get_value: ?*const fn (info: duckdb_profiling_info, key: [*c]const u8) callconv(.c) duckdb_value = null,
    duckdb_appender_begin_row: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_appender_end_row: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_append_default: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
    duckdb_append_bool: ?*const fn (appender: duckdb_appender, value: bool) callconv(.c) duckdb_state = null,
    duckdb_append_int8: ?*const fn (appender: duckdb_appender, value: i8) callconv(.c) duckdb_state = null,
    duckdb_append_int16: ?*const fn (appender: duckdb_appender, value: i16) callconv(.c) duckdb_state = null,
    duckdb_append_int32: ?*const fn (appender: duckdb_appender, value: i32) callconv(.c) duckdb_state = null,
    duckdb_append_int64: ?*const fn (appender: duckdb_appender, value: i64) callconv(.c) duckdb_state = null,
    duckdb_append_hugeint: ?*const fn (appender: duckdb_appender, value: duckdb_hugeint) callconv(.c) duckdb_state = null,
    duckdb_append_uint8: ?*const fn (appender: duckdb_appender, value: u8) callconv(.c) duckdb_state = null,
    duckdb_append_uint16: ?*const fn (appender: duckdb_appender, value: u16) callconv(.c) duckdb_state = null,
    duckdb_append_uint32: ?*const fn (appender: duckdb_appender, value: u32) callconv(.c) duckdb_state = null,
    duckdb_append_uint64: ?*const fn (appender: duckdb_appender, value: u64) callconv(.c) duckdb_state = null,
    duckdb_append_uhugeint: ?*const fn (appender: duckdb_appender, value: duckdb_uhugeint) callconv(.c) duckdb_state = null,
    duckdb_append_float: ?*const fn (appender: duckdb_appender, value: f32) callconv(.c) duckdb_state = null,
    duckdb_append_double: ?*const fn (appender: duckdb_appender, value: f64) callconv(.c) duckdb_state = null,
    duckdb_append_date: ?*const fn (appender: duckdb_appender, value: duckdb_date) callconv(.c) duckdb_state = null,
    duckdb_append_time: ?*const fn (appender: duckdb_appender, value: duckdb_time) callconv(.c) duckdb_state = null,
    duckdb_append_timestamp: ?*const fn (appender: duckdb_appender, value: duckdb_timestamp) callconv(.c) duckdb_state = null,
    duckdb_append_interval: ?*const fn (appender: duckdb_appender, value: duckdb_interval) callconv(.c) duckdb_state = null,
    duckdb_append_varchar: ?*const fn (appender: duckdb_appender, val: [*c]const u8) callconv(.c) duckdb_state = null,
    duckdb_append_varchar_length: ?*const fn (appender: duckdb_appender, val: [*c]const u8, length: idx_t) callconv(.c) duckdb_state = null,
    duckdb_append_blob: ?*const fn (appender: duckdb_appender, data: ?*const anyopaque, length: idx_t) callconv(.c) duckdb_state = null,
    duckdb_append_null: ?*const fn (appender: duckdb_appender) callconv(.c) duckdb_state = null,
};

pub const __VERSION__ = "Aro aro-zig";
pub const __Aro__ = "";
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __GNUC__ = @as(c_int, 7);
pub const __GNUC_MINOR__ = @as(c_int, 1);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 0);
pub const __ARO_EMULATE_NO__ = @as(c_int, 0);
pub const __ARO_EMULATE_CLANG__ = @as(c_int, 1);
pub const __ARO_EMULATE_GCC__ = @as(c_int, 2);
pub const __ARO_EMULATE_MSVC__ = @as(c_int, 3);
pub const __ARO_EMULATE__ = __ARO_EMULATE_GCC__;
pub inline fn __building_module(x: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &x;
    return @as(c_int, 0);
}
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// <builtin>:33:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// <builtin>:34:9
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MWAITX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __SSE4A__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512BF16__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __EVEX256__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __AVX512VP2INTERSECT__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __WBNOINVD__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __PREFETCHI__ = @as(c_int, 1);
pub const __CLZERO__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __RDPRU__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVXVNNI__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __ELF__ = @as(c_int, 1);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __ATOMIC_BOOL_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_WINT_T_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_SHORT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_INT_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_LLONG_LOCK_FREE = @as(c_int, 1);
pub const __ATOMIC_POINTER_LOCK_FREE = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SCHAR_WIDTH__ = @as(c_int, 8);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __LONG_LONG_WIDTH__ = @as(c_int, 64);
pub const __WCHAR_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIG_ATOMIC_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __BITINT_MAXWIDTH__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 10);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTPTR_TYPE__ = c_long;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// <builtin>:176:9
pub const __INTMAX_C = __helpers.L_SUFFIX;
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// <builtin>:179:9
pub const __UINTMAX_C = __helpers.UL_SUFFIX;
pub const __PTRDIFF_TYPE__ = c_long;
pub const __SIZE_TYPE__ = c_ulong;
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub inline fn __INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub inline fn __INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub inline fn __INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// <builtin>:205:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub inline fn __UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub inline fn __UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const __UINT16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// <builtin>:230:9
pub const __UINT32_C = __helpers.U_SUFFIX;
pub const __UINT32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// <builtin>:239:9
pub const __UINT64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const INT_LEAST8_FMTd__ = "hhd";
pub const INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const UINT_LEAST8_FMTo__ = "hho";
pub const UINT_LEAST8_FMTu__ = "hhu";
pub const UINT_LEAST8_FMTx__ = "hhx";
pub const UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const INT_FAST8_FMTd__ = "hhd";
pub const INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const UINT_FAST8_FMTo__ = "hho";
pub const UINT_FAST8_FMTu__ = "hhu";
pub const UINT_FAST8_FMTx__ = "hhx";
pub const UINT_FAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const INT_LEAST16_FMTd__ = "hd";
pub const INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST16_FMTo__ = "ho";
pub const UINT_LEAST16_FMTu__ = "hu";
pub const UINT_LEAST16_FMTx__ = "hx";
pub const UINT_LEAST16_FMTX__ = "hX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const INT_FAST16_FMTd__ = "hd";
pub const INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_FAST16_FMTo__ = "ho";
pub const UINT_FAST16_FMTu__ = "hu";
pub const UINT_FAST16_FMTx__ = "hx";
pub const UINT_FAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const INT_LEAST32_FMTd__ = "d";
pub const INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST32_FMTo__ = "o";
pub const UINT_LEAST32_FMTu__ = "u";
pub const UINT_LEAST32_FMTx__ = "x";
pub const UINT_LEAST32_FMTX__ = "X";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const INT_FAST32_FMTd__ = "d";
pub const INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_FAST32_FMTo__ = "o";
pub const UINT_FAST32_FMTu__ = "u";
pub const UINT_FAST32_FMTx__ = "x";
pub const UINT_FAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const INT_LEAST64_FMTd__ = "ld";
pub const INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_LEAST64_FMTo__ = "lo";
pub const UINT_LEAST64_FMTu__ = "lu";
pub const UINT_LEAST64_FMTx__ = "lx";
pub const UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const INT_FAST64_FMTd__ = "ld";
pub const INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_FMTo__ = "lo";
pub const UINT_FAST64_FMTu__ = "lu";
pub const UINT_FAST64_FMTx__ = "lx";
pub const UINT_FAST64_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_HAS_DENORM__ = "";
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = "";
pub const __FLT16_HAS_QUIET_NAN__ = "";
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = "";
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = "";
pub const __FLT_HAS_QUIET_NAN__ = "";
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = "";
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = "";
pub const __DBL_HAS_QUIET_NAN__ = "";
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = "";
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = "";
pub const __LDBL_HAS_QUIET_NAN__ = "";
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __FLT_EVAL_METHOD__ = @as(c_int, 0);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const DUCKDB_API = "";
pub const DUCKDB_EXTENSION_API = @compileError("unable to translate macro: undefined identifier `visibility`");
// external/extension-template-c/duckdb_capi/duckdb.h:46:9
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const __CLANG_STDINT_H = "";
pub const _STDINT_H = @as(c_int, 1);
pub const _FEATURES_H = @as(c_int, 1);
pub const __KERNEL_STRICT_NAMES = "";
pub inline fn __GNUC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GNUC__ << @as(c_int, 16)) + __GNUC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub inline fn __glibc_clang_prereq(maj: anytype, min: anytype) @TypeOf(@as(c_int, 0)) {
    _ = &maj;
    _ = &min;
    return @as(c_int, 0);
}
pub const __GLIBC_USE = @compileError("unable to translate macro: undefined identifier `__GLIBC_USE_`");
// /usr/include/features.h:197:9
pub const _DEFAULT_SOURCE = @as(c_int, 1);
pub const __GLIBC_USE_ISOC2Y = @as(c_int, 0);
pub const __GLIBC_USE_ISOC23 = @as(c_int, 0);
pub const __USE_ISOC11 = @as(c_int, 1);
pub const __USE_POSIX_IMPLICITLY = @as(c_int, 1);
pub const _POSIX_SOURCE = @as(c_int, 1);
pub const _POSIX_C_SOURCE = @as(c_long, 202405);
pub const __USE_POSIX = @as(c_int, 1);
pub const __USE_POSIX2 = @as(c_int, 1);
pub const __USE_POSIX199309 = @as(c_int, 1);
pub const __USE_POSIX199506 = @as(c_int, 1);
pub const __USE_XOPEN2K = @as(c_int, 1);
pub const __USE_ISOC95 = @as(c_int, 1);
pub const __USE_ISOC99 = @as(c_int, 1);
pub const __USE_XOPEN2K8 = @as(c_int, 1);
pub const _ATFILE_SOURCE = @as(c_int, 1);
pub const __USE_XOPEN2K24 = @as(c_int, 1);
pub const __WORDSIZE = @as(c_int, 64);
pub const __WORDSIZE_TIME64_COMPAT32 = @as(c_int, 1);
pub const __SYSCALL_WORDSIZE = @as(c_int, 64);
pub const __TIMESIZE = __WORDSIZE;
pub const __USE_TIME_BITS64 = @as(c_int, 1);
pub const __USE_MISC = @as(c_int, 1);
pub const __USE_ATFILE = @as(c_int, 1);
pub const __USE_FORTIFY_LEVEL = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_GETS = @as(c_int, 0);
pub const __GLIBC_USE_DEPRECATED_SCANF = @as(c_int, 0);
pub const __GLIBC_USE_C23_STRTOL = @as(c_int, 0);
pub const _STDC_PREDEF_H = @as(c_int, 1);
pub const __STDC_IEC_559__ = @as(c_int, 1);
pub const __STDC_IEC_60559_BFP__ = @as(c_long, 201404);
pub const __STDC_IEC_559_COMPLEX__ = @as(c_int, 1);
pub const __STDC_IEC_60559_COMPLEX__ = @as(c_long, 201404);
pub const __STDC_ISO_10646__ = @as(c_long, 201706);
pub const __GNU_LIBRARY__ = @as(c_int, 6);
pub const __GLIBC__ = @as(c_int, 2);
pub const __GLIBC_MINOR__ = @as(c_int, 43);
pub inline fn __GLIBC_PREREQ(maj: anytype, min: anytype) @TypeOf(((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min)) {
    _ = &maj;
    _ = &min;
    return ((__GLIBC__ << @as(c_int, 16)) + __GLIBC_MINOR__) >= ((maj << @as(c_int, 16)) + min);
}
pub const _SYS_CDEFS_H = @as(c_int, 1);
pub const __glibc_has_attribute = @compileError("unable to translate macro: undefined identifier `__has_attribute`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:45:10
pub inline fn __glibc_has_builtin(name: anytype) @TypeOf(__builtin.has_builtin(name)) {
    _ = &name;
    return __builtin.has_builtin(name);
}
pub const __glibc_has_extension = @compileError("unable to translate macro: undefined identifier `__has_extension`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:55:10
pub const __LEAF = @compileError("unable to translate macro: undefined identifier `__leaf__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:65:11
pub const __LEAF_ATTR = @compileError("unable to translate macro: undefined identifier `__leaf__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:66:11
pub const __THROW = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:79:11
pub const __THROWNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:80:11
pub const __NTH = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:81:11
pub const __NTHNL = @compileError("unable to translate macro: undefined identifier `__nothrow__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:82:11
pub const __COLD = @compileError("unable to translate macro: undefined identifier `__cold__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:102:11
pub inline fn __P(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub inline fn __PMT(args: anytype) @TypeOf(args) {
    _ = &args;
    return args;
}
pub const __CONCAT = @compileError("unable to translate C expr: unexpected token '##'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:131:9
pub const __STRING = @compileError("unable to translate C expr: unexpected token ''");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:132:9
pub const __ptr_t = ?*anyopaque;
pub const __BEGIN_DECLS = "";
pub const __END_DECLS = "";
pub const __attribute_overloadable__ = "";
pub inline fn __bos(ptr: anytype) @TypeOf(__builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1))) {
    _ = &ptr;
    return __builtin.object_size(ptr, __USE_FORTIFY_LEVEL > @as(c_int, 1));
}
pub inline fn __bos0(ptr: anytype) @TypeOf(__builtin.object_size(ptr, @as(c_int, 0))) {
    _ = &ptr;
    return __builtin.object_size(ptr, @as(c_int, 0));
}
pub inline fn __glibc_objsize0(__o: anytype) @TypeOf(__bos0(__o)) {
    _ = &__o;
    return __bos0(__o);
}
pub inline fn __glibc_objsize(__o: anytype) @TypeOf(__bos(__o)) {
    _ = &__o;
    return __bos(__o);
}
pub const __warnattr = @compileError("unable to translate macro: undefined identifier `__warning__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:366:10
pub const __errordecl = @compileError("unable to translate macro: undefined identifier `__error__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:367:10
pub const __flexarr = @compileError("unable to translate C expr: unexpected token '['");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:379:10
pub const __glibc_c99_flexarr_available = @as(c_int, 1);
pub const __REDIRECT = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:410:10
pub const __REDIRECT_NTH = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:417:11
pub const __REDIRECT_NTHNL = @compileError("unable to translate C expr: unexpected token '__asm__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:419:11
pub const __ASMNAME = @compileError("unable to translate macro: undefined identifier `__USER_LABEL_PREFIX__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:422:10
pub inline fn __ASMNAME2(prefix: anytype, cname: anytype) @TypeOf(__STRING(prefix) ++ cname) {
    _ = &prefix;
    _ = &cname;
    return __STRING(prefix) ++ cname;
}
pub const __REDIRECT_FORTIFY = __REDIRECT;
pub const __REDIRECT_FORTIFY_NTH = __REDIRECT_NTH;
pub const __attribute_malloc__ = @compileError("unable to translate macro: undefined identifier `__malloc__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:452:10
pub const __attribute_alloc_size__ = @compileError("unable to translate macro: undefined identifier `__alloc_size__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:460:10
pub const __attribute_alloc_align__ = @compileError("unable to translate macro: undefined identifier `__alloc_align__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:469:10
pub const __attribute_pure__ = @compileError("unable to translate macro: undefined identifier `__pure__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:479:10
pub const __attribute_const__ = @compileError("unable to translate C expr: unexpected token '__attribute__'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:486:10
pub const __attribute_maybe_unused__ = @compileError("unable to translate macro: undefined identifier `__unused__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:492:10
pub const __attribute_used__ = @compileError("unable to translate macro: undefined identifier `__used__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:501:10
pub const __attribute_noinline__ = @compileError("unable to translate macro: undefined identifier `__noinline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:502:10
pub const __attribute_deprecated__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:510:10
pub const __attribute_deprecated_msg__ = @compileError("unable to translate macro: undefined identifier `__deprecated__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:520:10
pub const __attribute_format_arg__ = @compileError("unable to translate macro: undefined identifier `__format_arg__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:533:10
pub const __attribute_format_strfmon__ = @compileError("unable to translate macro: undefined identifier `__format__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:543:10
pub const __attribute_nonnull__ = @compileError("unable to translate macro: undefined identifier `__nonnull__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:555:11
pub inline fn __nonnull(params: anytype) @TypeOf(__attribute_nonnull__(params)) {
    _ = &params;
    return __attribute_nonnull__(params);
}
pub const __returns_nonnull = @compileError("unable to translate macro: undefined identifier `__returns_nonnull__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:568:10
pub const __attribute_warn_unused_result__ = @compileError("unable to translate macro: undefined identifier `__warn_unused_result__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:577:10
pub const __wur = "";
pub const __always_inline = @compileError("unable to translate macro: undefined identifier `__always_inline__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:595:10
pub const __attribute_artificial__ = @compileError("unable to translate macro: undefined identifier `__artificial__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:604:10
pub const __extern_inline = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:626:11
pub const __extern_always_inline = @compileError("unable to translate C expr: unexpected token 'extern'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:627:11
pub const __fortify_function = __extern_always_inline ++ __attribute_artificial__;
pub const __va_arg_pack = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:638:10
pub const __va_arg_pack_len = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg_pack_len`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:639:10
pub const __restrict_arr = @compileError("unable to translate C expr: unexpected token '__restrict'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:666:10
pub inline fn __glibc_unlikely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 0))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 0));
}
pub inline fn __glibc_likely(cond: anytype) @TypeOf(__builtin.expect(cond, @as(c_int, 1))) {
    _ = &cond;
    return __builtin.expect(cond, @as(c_int, 1));
}
pub const __attribute_nonstring__ = "";
pub inline fn __attribute_copy__(arg: anytype) void {
    _ = &arg;
    return;
}
pub const __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = @as(c_int, 0);
pub inline fn __LDBL_REDIR1(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR(name: anytype, proto: anytype) @TypeOf(name ++ proto) {
    _ = &name;
    _ = &proto;
    return name ++ proto;
}
pub inline fn __LDBL_REDIR1_NTH(name: anytype, proto: anytype, alias: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR_NTH(name: anytype, proto: anytype) @TypeOf(name ++ proto ++ __THROW) {
    _ = &name;
    _ = &proto;
    return name ++ proto ++ __THROW;
}
pub inline fn __LDBL_REDIR2_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __LDBL_REDIR_DECL(name: anytype) void {
    _ = &name;
    return;
}
pub inline fn __REDIRECT_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT(name, proto, alias);
}
pub inline fn __REDIRECT_NTH_LDBL(name: anytype, proto: anytype, alias: anytype) @TypeOf(__REDIRECT_NTH(name, proto, alias)) {
    _ = &name;
    _ = &proto;
    _ = &alias;
    return __REDIRECT_NTH(name, proto, alias);
}
pub const __glibc_macro_warning1 = @compileError("unable to translate macro: undefined identifier `_Pragma`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:807:10
pub const __glibc_macro_warning = @compileError("unable to translate macro: undefined identifier `GCC`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:808:10
pub const __HAVE_GENERIC_SELECTION = @as(c_int, 1);
pub const __glibc_const_generic = @compileError("unable to translate C expr: expected type instead got 'const'");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:837:10
pub inline fn __fortified_attr_access(a: anytype, o: anytype, s: anytype) void {
    _ = &a;
    _ = &o;
    _ = &s;
    return;
}
pub inline fn __attr_access(x: anytype) void {
    _ = &x;
    return;
}
pub inline fn __attr_access_none(argno: anytype) void {
    _ = &argno;
    return;
}
pub inline fn __attr_dealloc(dealloc: anytype, argno: anytype) void {
    _ = &dealloc;
    _ = &argno;
    return;
}
pub const __attr_dealloc_free = "";
pub const __attribute_returns_twice__ = @compileError("unable to translate macro: undefined identifier `__returns_twice__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:884:10
pub const __attribute_struct_may_alias__ = @compileError("unable to translate macro: undefined identifier `__may_alias__`");
// /usr/include/x86_64-linux-gnu/sys/cdefs.h:893:10
pub const __stub___compat_bdflush = "";
pub const __stub_chflags = "";
pub const __stub_fchflags = "";
pub const __stub_gtty = "";
pub const __stub_revoke = "";
pub const __stub_setlogin = "";
pub const __stub_sigreturn = "";
pub const __stub_stty = "";
pub const __GLIBC_USE_LIB_EXT2 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_BFP_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_FUNCS_EXT_C23 = @as(c_int, 0);
pub const __GLIBC_USE_IEC_60559_TYPES_EXT = @as(c_int, 0);
pub const _BITS_TYPES_H = @as(c_int, 1);
pub const __S16_TYPE = c_short;
pub const __U16_TYPE = c_ushort;
pub const __S32_TYPE = c_int;
pub const __U32_TYPE = c_uint;
pub const __SLONGWORD_TYPE = c_long;
pub const __ULONGWORD_TYPE = c_ulong;
pub const __SQUAD_TYPE = c_long;
pub const __UQUAD_TYPE = c_ulong;
pub const __SWORD_TYPE = c_long;
pub const __UWORD_TYPE = c_ulong;
pub const __SLONG32_TYPE = c_int;
pub const __ULONG32_TYPE = c_uint;
pub const __S64_TYPE = c_long;
pub const __U64_TYPE = c_ulong;
pub const _BITS_TYPESIZES_H = @as(c_int, 1);
pub const __SYSCALL_SLONG_TYPE = __SLONGWORD_TYPE;
pub const __SYSCALL_ULONG_TYPE = __ULONGWORD_TYPE;
pub const __DEV_T_TYPE = __UQUAD_TYPE;
pub const __UID_T_TYPE = __U32_TYPE;
pub const __GID_T_TYPE = __U32_TYPE;
pub const __INO_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __INO64_T_TYPE = __UQUAD_TYPE;
pub const __MODE_T_TYPE = __U32_TYPE;
pub const __NLINK_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSWORD_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __OFF64_T_TYPE = __SQUAD_TYPE;
pub const __PID_T_TYPE = __S32_TYPE;
pub const __RLIM_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __RLIM64_T_TYPE = __UQUAD_TYPE;
pub const __BLKCNT_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __BLKCNT64_T_TYPE = __SQUAD_TYPE;
pub const __FSBLKCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSBLKCNT64_T_TYPE = __UQUAD_TYPE;
pub const __FSFILCNT_T_TYPE = __SYSCALL_ULONG_TYPE;
pub const __FSFILCNT64_T_TYPE = __UQUAD_TYPE;
pub const __ID_T_TYPE = __U32_TYPE;
pub const __CLOCK_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __TIME_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __USECONDS_T_TYPE = __U32_TYPE;
pub const __SUSECONDS_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __SUSECONDS64_T_TYPE = __SQUAD_TYPE;
pub const __DADDR_T_TYPE = __S32_TYPE;
pub const __KEY_T_TYPE = __S32_TYPE;
pub const __CLOCKID_T_TYPE = __S32_TYPE;
pub const __TIMER_T_TYPE = ?*anyopaque;
pub const __BLKSIZE_T_TYPE = __SYSCALL_SLONG_TYPE;
pub const __FSID_T_TYPE = @compileError("unable to translate macro: undefined identifier `__val`");
// /usr/include/x86_64-linux-gnu/bits/typesizes.h:73:9
pub const __SSIZE_T_TYPE = __SWORD_TYPE;
pub const __CPU_MASK_TYPE = __SYSCALL_ULONG_TYPE;
pub const __OFF_T_MATCHES_OFF64_T = @as(c_int, 1);
pub const __INO_T_MATCHES_INO64_T = @as(c_int, 1);
pub const __RLIM_T_MATCHES_RLIM64_T = @as(c_int, 1);
pub const __STATFS_MATCHES_STATFS64 = @as(c_int, 1);
pub const __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = @as(c_int, 1);
pub const __FD_SETSIZE = @as(c_int, 1024);
pub const _BITS_TIME64_H = @as(c_int, 1);
pub const __TIME64_T_TYPE = __TIME_T_TYPE;
pub const _BITS_WCHAR_H = @as(c_int, 1);
pub const __WCHAR_MAX = __WCHAR_MAX__;
pub const __WCHAR_MIN = -__WCHAR_MAX - @as(c_int, 1);
pub const _BITS_STDINT_INTN_H = @as(c_int, 1);
pub const _BITS_STDINT_UINTN_H = @as(c_int, 1);
pub const _BITS_STDINT_LEAST_H = @as(c_int, 1);
pub const __intptr_t_defined = "";
pub const __INT64_C = __helpers.L_SUFFIX;
pub const __UINT64_C = __helpers.UL_SUFFIX;
pub const INT8_MIN = -@as(c_int, 128);
pub const INT16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT8_MAX = @as(c_int, 127);
pub const INT16_MAX = @as(c_int, 32767);
pub const INT32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT8_MAX = @as(c_int, 255);
pub const UINT16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_LEAST8_MIN = -@as(c_int, 128);
pub const INT_LEAST16_MIN = -@as(c_int, 32767) - @as(c_int, 1);
pub const INT_LEAST32_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const INT_LEAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_LEAST8_MAX = @as(c_int, 127);
pub const INT_LEAST16_MAX = @as(c_int, 32767);
pub const INT_LEAST32_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const INT_LEAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_LEAST8_MAX = @as(c_int, 255);
pub const UINT_LEAST16_MAX = __helpers.promoteIntLiteral(c_int, 65535, .decimal);
pub const UINT_LEAST32_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const UINT_LEAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INT_FAST8_MIN = -@as(c_int, 128);
pub const INT_FAST16_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST32_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INT_FAST64_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INT_FAST8_MAX = @as(c_int, 127);
pub const INT_FAST16_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST32_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const INT_FAST64_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINT_FAST8_MAX = @as(c_int, 255);
pub const UINT_FAST16_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST32_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const UINT_FAST64_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const INTPTR_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const INTPTR_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const UINTPTR_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const INTMAX_MIN = -__INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal)) - @as(c_int, 1);
pub const INTMAX_MAX = __INT64_C(__helpers.promoteIntLiteral(c_int, 9223372036854775807, .decimal));
pub const UINTMAX_MAX = __UINT64_C(__helpers.promoteIntLiteral(c_int, 18446744073709551615, .decimal));
pub const PTRDIFF_MIN = -__helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal) - @as(c_int, 1);
pub const PTRDIFF_MAX = __helpers.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const SIG_ATOMIC_MIN = -__helpers.promoteIntLiteral(c_int, 2147483647, .decimal) - @as(c_int, 1);
pub const SIG_ATOMIC_MAX = __helpers.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const SIZE_MAX = __helpers.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const WCHAR_MIN = __WCHAR_MIN;
pub const WCHAR_MAX = __WCHAR_MAX;
pub const WINT_MIN = @as(c_uint, 0);
pub const WINT_MAX = __helpers.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub inline fn INT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn INT32_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const INT64_C = __helpers.L_SUFFIX;
pub inline fn UINT8_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub inline fn UINT16_C(c: anytype) @TypeOf(c) {
    _ = &c;
    return c;
}
pub const UINT32_C = __helpers.U_SUFFIX;
pub const UINT64_C = __helpers.UL_SUFFIX;
pub const INTMAX_C = __helpers.L_SUFFIX;
pub const UINTMAX_C = __helpers.UL_SUFFIX;
pub const __STDC_VERSION_STDDEF_H__ = @as(c_long, 202311);
pub const NULL = __helpers.cast(?*anyopaque, @as(c_int, 0));
pub const offsetof = @compileError("unable to translate macro: undefined identifier `__builtin_offsetof`");
// /home/hassan/.local/share/zig/0.17.0/lib/compiler/aro/include/stddef.h:18:9
pub const DUCKDB_EXTENSION_EXTERN_C_GUARD_OPEN = "";
pub const DUCKDB_EXTENSION_EXTERN_C_GUARD_CLOSE = "";
pub const DUCKDB_EXTENSION_GLUE_HELPER = @compileError("unable to translate C expr: unexpected token '##'");
// external/extension-template-c/duckdb_capi/duckdb_extension.h:32:9
pub inline fn DUCKDB_EXTENSION_GLUE(x: anytype, y: anytype) @TypeOf(DUCKDB_EXTENSION_GLUE_HELPER(x, y)) {
    _ = &x;
    _ = &y;
    return DUCKDB_EXTENSION_GLUE_HELPER(x, y);
}
pub const DUCKDB_EXTENSION_STR_HELPER = @compileError("unable to translate C expr: unexpected token ''");
// external/extension-template-c/duckdb_capi/duckdb_extension.h:34:9
pub inline fn DUCKDB_EXTENSION_STR(x: anytype) @TypeOf(DUCKDB_EXTENSION_STR_HELPER(x)) {
    _ = &x;
    return DUCKDB_EXTENSION_STR_HELPER(x);
}
pub inline fn DUCKDB_EXTENSION_SEMVER_STRING(major: anytype, minor: anytype, patch: anytype) @TypeOf("v" ++ DUCKDB_EXTENSION_STR_HELPER(major) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(minor) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(patch)) {
    _ = &major;
    _ = &minor;
    _ = &patch;
    return "v" ++ DUCKDB_EXTENSION_STR_HELPER(major) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(minor) ++ "." ++ DUCKDB_EXTENSION_STR_HELPER(patch);
}
pub const DUCKDB_EXTENSION_API_VERSION_MAJOR = @as(c_int, 1);
pub const DUCKDB_EXTENSION_API_VERSION_MINOR = @as(c_int, 2);
pub const DUCKDB_EXTENSION_API_VERSION_PATCH = @as(c_int, 0);
pub const DUCKDB_EXTENSION_API_VERSION_STRING = DUCKDB_EXTENSION_SEMVER_STRING(DUCKDB_EXTENSION_API_VERSION_MAJOR, DUCKDB_EXTENSION_API_VERSION_MINOR, DUCKDB_EXTENSION_API_VERSION_PATCH);
pub const DUCKDB_EXTENSION_GLOBAL = @compileError("unable to translate macro: undefined identifier `duckdb_ext_api`");
// external/extension-template-c/duckdb_capi/duckdb_extension.h:971:9
pub const DUCKDB_EXTENSION_API_INIT = @compileError("unable to translate macro: undefined identifier `res`");
// external/extension-template-c/duckdb_capi/duckdb_extension.h:973:9
pub const DUCKDB_EXTENSION_EXTERN = @compileError("unable to translate macro: undefined identifier `duckdb_ext_api`");
// external/extension-template-c/duckdb_capi/duckdb_extension.h:981:9
pub const DUCKDB_CAPI_ENTRY_VISIBILITY = @compileError("unable to translate macro: undefined identifier `visibility`");
// external/extension-template-c/duckdb_capi/duckdb_extension.h:986:9
pub const DUCKDB_TYPE = enum_DUCKDB_TYPE;
pub const _duckdb_vector = struct__duckdb_vector;
pub const _duckdb_instance_cache = struct__duckdb_instance_cache;
pub const _duckdb_database = struct__duckdb_database;
pub const _duckdb_connection = struct__duckdb_connection;
pub const _duckdb_prepared_statement = struct__duckdb_prepared_statement;
pub const _duckdb_extracted_statements = struct__duckdb_extracted_statements;
pub const _duckdb_pending_result = struct__duckdb_pending_result;
pub const _duckdb_appender = struct__duckdb_appender;
pub const _duckdb_table_description = struct__duckdb_table_description;
pub const _duckdb_config = struct__duckdb_config;
pub const _duckdb_logical_type = struct__duckdb_logical_type;
pub const _duckdb_create_type_info = struct__duckdb_create_type_info;
pub const _duckdb_data_chunk = struct__duckdb_data_chunk;
pub const _duckdb_value = struct__duckdb_value;
pub const _duckdb_profiling_info = struct__duckdb_profiling_info;
pub const _duckdb_extension_info = struct__duckdb_extension_info;
pub const _duckdb_function_info = struct__duckdb_function_info;
pub const _duckdb_scalar_function = struct__duckdb_scalar_function;
pub const _duckdb_scalar_function_set = struct__duckdb_scalar_function_set;
pub const _duckdb_aggregate_function = struct__duckdb_aggregate_function;
pub const _duckdb_aggregate_function_set = struct__duckdb_aggregate_function_set;
pub const _duckdb_aggregate_state = struct__duckdb_aggregate_state;
pub const _duckdb_table_function = struct__duckdb_table_function;
pub const _duckdb_bind_info = struct__duckdb_bind_info;
pub const _duckdb_init_info = struct__duckdb_init_info;
pub const _duckdb_cast_function = struct__duckdb_cast_function;
pub const _duckdb_replacement_scan_info = struct__duckdb_replacement_scan_info;
pub const _duckdb_arrow = struct__duckdb_arrow;
pub const _duckdb_arrow_stream = struct__duckdb_arrow_stream;
pub const _duckdb_arrow_schema = struct__duckdb_arrow_schema;
pub const _duckdb_arrow_array = struct__duckdb_arrow_array;
pub const duckdb_extension_access = struct_duckdb_extension_access;
