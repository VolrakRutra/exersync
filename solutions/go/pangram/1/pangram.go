package pangram

import (
	"strings"
	"unicode"
)

func IsPangram(input string) bool {
	lower := strings.ToLower(input)
	arr := make(map[rune]bool)
	for _, char := range lower {
		if unicode.IsLetter(char) {
			arr[char] = true
		}
	}

	return len(arr) == 26
}
