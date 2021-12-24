#[cfg(test)]
mod tests {

    pub fn reverse_words(s: String) -> String {
        return s.split(" ")
            .map(|w| w.chars().rev().collect())
            .collect::<Vec<String>>()
            .join(" ")
    }
}
