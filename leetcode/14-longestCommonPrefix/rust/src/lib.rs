#[cfg(test)]
mod tests {

    pub fn longest_common_prefix(strs: Vec<String>) -> String {
        strs.into_iter().reduce(longest_prefix).unwrap_or("".to_string())
    }

    pub fn longest_prefix(str1: String, str2: String) -> String {
        return str1.chars().zip(str2.chars())
            .take_while(|p| p.0 == p.1)
            .map(|p| p.0)
            .collect();
    }

    #[test]
    fn examples_work() {
        assert_eq!(longest_common_prefix(vec!["flower".to_string(),"flow".to_string(),"flight".to_string()]), "fl".to_string());
        assert_eq!(longest_common_prefix(vec!["dog".to_string(),"racecar".to_string(),"car".to_string()]), "".to_string());
    }
}
