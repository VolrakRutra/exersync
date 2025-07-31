// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

/// various log levels
#[derive(Clone, PartialEq, Eq, Debug)]
pub enum LogLevel {
    Info,
    Warning,
    Error,
}
/// primary function for emitting logs
pub fn log(level: LogLevel, message: &str) -> String {
    match level {
        LogLevel::Error => error(message),
        LogLevel::Info => info(message),
        LogLevel::Warning => warn(message),
    }
}
pub fn info(message: &str) -> String {
    let mut owned_string: String = "[INFO]: ".to_owned();
    owned_string.push_str(message);
    owned_string
}
pub fn warn(message: &str) -> String {
    let mut owned_string: String = "[WARNING]: ".to_owned();
    owned_string.push_str(message);
    owned_string
}
pub fn error(message: &str) -> String {
    let mut owned_string: String = "[ERROR]: ".to_owned();
    owned_string.push_str(message);
    owned_string
}
