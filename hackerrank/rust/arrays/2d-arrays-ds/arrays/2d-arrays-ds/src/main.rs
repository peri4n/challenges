use std::env;
use std::fs::File;
use std::io::{self, BufRead, Write};

fn hourglass_sum(arr: &[Vec<i32>]) -> i32 {

    let mut max = i32::MIN;

    for i in 1..5_usize {
        for j in 1..5_usize {
            let mut hourglass = arr[i-1][j-1] + arr[i-1][j] + arr[i-1][j+1];
            hourglass += arr[i][j];
            hourglass += arr[i+1][j-1] + arr[i+1][j] + arr[i+1][j+1];

            max = hourglass.max(max);
        }
    }

    max
}

fn main() {
    let stdin = io::stdin();
    let mut stdin_iterator = stdin.lock().lines();

    let mut fptr = File::create(env::var("OUTPUT_PATH").unwrap()).unwrap();

    let mut arr: Vec<Vec<i32>> = Vec::with_capacity(6_usize);

    for i in 0..6_usize {
        arr.push(Vec::with_capacity(6_usize));

        arr[i] = stdin_iterator
            .next()
            .unwrap()
            .unwrap()
            .trim_end()
            .split(' ')
            .map(|s| s.to_string().parse::<i32>().unwrap())
            .collect();
    }

    let result = hourglass_sum(&arr);

    writeln!(&mut fptr, "{}", result).ok();
}
