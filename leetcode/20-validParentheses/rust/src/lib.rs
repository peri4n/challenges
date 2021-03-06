#[cfg(test)]
mod tests {

    pub fn is_valid(s: String) -> bool {
        let mut stack: Vec<char> = vec![];

        for c in s.chars() {
            match c {
                '(' => stack.push(')'),
                '[' => stack.push(']'),
                '{' => stack.push('}'),
                ')' | ']' | '}' if Some(c) != stack.pop() => return false,
                _ => ()
            }
        }

        return stack.is_empty();
    }

    #[test]
    fn it_works() {
        assert_eq!(is_valid("()".to_string()), true);
        assert_eq!(is_valid("()[]{}".to_string()), true);
        assert_eq!(is_valid("{[]}".to_string()), true);

        assert_eq!(is_valid("([".to_string()), false);
        assert_eq!(is_valid("([)]".to_string()), false);
    }
}
