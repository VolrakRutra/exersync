pub fn production_rate_per_hour(speed: u8) -> f64 {
    let rawSpeed = ((speed as f64) * 221.0);
    
    if speed <= 4{
        return rawSpeed;
    } else if speed <= 8{
        return rawSpeed * 0.9;
    } else {
        return rawSpeed * 0.77;
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    (production_rate_per_hour(speed) / 60.0) as u32
}
