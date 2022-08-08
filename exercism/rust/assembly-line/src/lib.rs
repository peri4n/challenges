// This stub file contains items that aren't used yet; feel free to remove this module attribute
// to enable stricter warnings.
#![allow(unused)]

pub fn production_rate_per_hour(speed: u8) -> f64 {
    (speed as f64) * 221.0 * success_rate(speed)
}

fn success_rate(speed: u8) -> f64 {
    match speed {
        0 ..= 4 => 1.0,
        5 ..=8 => 0.9,
        _ => 0.77
    }
}

pub fn working_items_per_minute(speed: u8) -> u32 {
    (production_rate_per_hour(speed) / 60.0).floor() as u32
}
