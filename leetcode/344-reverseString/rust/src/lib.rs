#[cfg(test)]
mod tests {
    pub fn reverse_string(s: &mut Vec<char>) {
        let mut left = 0;
        let mut right = s.len() - 1;

        while left < right {
            let tmp = s[left];
            s[left] = s[right];
            s[right] = tmp;
            left += 1;
            right -= 1;
        }
    }

    #[test]
    fn example1() {
        let mut chars: Vec<char> = "hello".chars().collect();
        reverse_string(&mut chars);
        assert_eq!(chars, "olleh".chars().collect::<Vec<char>>());
    }
    #[test]
    fn example2() {
        let mut chars: Vec<char> = "Hannah".chars().collect();
        reverse_string(&mut chars);
        assert_eq!(chars, "hannaH".chars().collect::<Vec<char>>());
    }
}
