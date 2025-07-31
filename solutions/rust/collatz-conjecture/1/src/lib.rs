pub fn collatz(n: u64) -> Option<u64> {
    let mut count = 0;
    let mut n = n;

    loop {
        let next = next_step(n);
        if next.is_some() {
            if n == 1 {
                break;
            }
            n = next.unwrap();
            count += 1;
        } else {
            return None;
        }
    }
    Some(count)
}

pub fn next_step(n: u64) -> Option<u64> {
    if n >= u64::MAX / 3 {
        return None;
    }
    if n == 0 {
        return None
    }
    if n % 2 == 0 {
        Some(n / 2)
    } else {
        Some(n * 3 + 1)
    }
}
