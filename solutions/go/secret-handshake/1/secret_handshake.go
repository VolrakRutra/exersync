package secret

func Handshake(code uint) []string {
	result := []string{}
	reverse := true
	if code >= 16 {
		reverse = false
		code -= 16
	}

	if code >= 8 {
		result = append(result, "jump")
		code -= 8
	}

	if code >= 4 {
		result = append(result, "close your eyes")
		code -= 4
	}

	if code >= 2 {
		result = append(result, "double blink")
		code -= 2
	}
	if code >= 1 {
		result = append(result, "wink")
	}

	if reverse {
		return reverseArray(result)
	}

	return result

}

func reverseArray(arr []string) []string {
	for i, j := 0, len(arr)-1; i < j; i, j = i+1, j-1 {
		arr[i], arr[j] = arr[j], arr[i]
	}
	return arr
}
