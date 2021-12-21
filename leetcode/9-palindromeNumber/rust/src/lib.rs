#[cfg(test)]
mod tests {

    pub fn is_palindrome(x: i32) -> bool {
        let mut num = x;
        if num < 0 || (num % 10 == 0) && num != 0 {
            return false;
        } else {
            let mut reverted_number = 0;
            while num > reverted_number {
                reverted_number = reverted_number * 10 + num % 10;
                num /= 10;
            }

            return num == reverted_number || num == (reverted_number / 10);
        }
    }

    #[test]
    fn it_works() {
        assert_eq!(is_palindrome(121), true);
        assert_eq!(is_palindrome(1331), true);
        assert_eq!(is_palindrome(1234321), true);
    }
}
