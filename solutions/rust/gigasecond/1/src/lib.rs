use time::Duration;
use time::PrimitiveDateTime as DateTime;

// Returns a DateTime one billion seconds after start.
pub fn after(start: DateTime) -> DateTime {
    let one_billion_seconds = Duration::seconds(1_000_000_000);
    let initial = start.checked_add(one_billion_seconds);

    match initial {
        None => return start,
        Some(t) => return t,
    }
}
