// Package bob is about bob the teenager, who communicates in cryptic messages.
package bob

import "strings"

// Hey is an example of an artificially intelligent simulator of a teenager's brain.
func Hey(remark string) string {
	trimmed := strings.TrimSpace(remark)

	if trimmed == "" {
		return "Fine. Be that way!"
	}

	isQuestion := trimmed[len(trimmed)-1] == '?'
	isYelling := strings.ToUpper(trimmed) == trimmed && strings.ToLower(trimmed) != trimmed

	if isQuestion && isYelling {
		return "Calm down, I know what I'm doing!"
	}

	if isQuestion {
		return "Sure."
	}

	if isYelling {
		return "Whoa, chill out!"
	}

	return "Whatever."
}
