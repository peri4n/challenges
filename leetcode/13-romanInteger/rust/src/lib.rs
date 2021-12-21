#[cfg(test)]
mod tests {

    pub fn roman_to_int(s: String) -> i32 {
        let mut acc = 0;
        let mut stream = s.chars().peekable();
        while let Some(curr) = stream.next() {
            let next = stream.peek();
            acc += match (curr, next){
                ('I', Some('V')) => -1,
                ('I', Some('X')) => -1,
                ('X', Some('L')) => -10,
                ('X', Some('C')) => -10,
                ('C', Some('D')) => -100,
                ('C', Some('M')) => -100,
                ('I', _) => 1,
                ('V', _) => 5,
                ('X', _) => 10,
                ('L', _) => 50,
                ('C', _) => 100,
                ('D', _) => 500,
                ('M', _) => 1000,
                _ => panic!("Something went wrong")
            }
        }
        acc
    }

    #[test]
    fn examples_work() {
        assert_eq!(roman_to_int("III".to_string()), 3);
        assert_eq!(roman_to_int("LVIII".to_string()), 58);
        assert_eq!(roman_to_int("MCMXCIV".to_string()), 1994);
    }
}
