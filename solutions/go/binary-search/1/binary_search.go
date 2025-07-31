package binarysearch

func SearchInts(list []int, key int) int {
	min := 0
	max := len(list) - 1

	for min <= max {
		mid := (max + min) / 2
		if list[mid] == key {
			return mid
		} else if list[mid] > key {
			max = mid - 1
		} else {
			min = mid + 1
		}
	}
	return -1
}
