pub fn reply(message: &str) -> &str {
    let trimmed = message.trim();

    if trimmed.len() == 0 {
        return "Fine. Be that way!";
    }

    let is_question = trimmed.chars().nth(trimmed.len() - 1).unwrap() == '?';
    let is_yelling = is_uppercase(trimmed) && !is_lowercase(trimmed);

    if is_question && is_yelling {
        return "Calm down, I know what I'm doing!";
    }

    if is_question {
        return "Sure.";
    }

    if is_yelling {
        return "Whoa, chill out!";
    }

    return "Whatever.";
}

fn is_uppercase(s: &str) -> bool {
    for char in s.chars() {
        if char.is_lowercase() {
            return false;
        }
    }
    return true;
}

fn is_lowercase(s: &str) -> bool {
    for char in s.chars() {
        if char.is_uppercase() {
            return false;
        }
    }
    return true;
}
