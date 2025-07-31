package sieve

import (
	"math"
)

func Sieve(limit int) []int {

	result := []int{}
	if limit < 2 {
		return result
	}
	starter := []int{}
	for i := 2; i <= limit; i++ {
		starter = append(starter, i)
	}

	for i := 0; i < int(math.Ceil(math.Sqrt(float64(limit)))); i++ {
		if len(starter) == 0 {
			break
		}
		result = append(result, starter[0])
		starter = removeDivisibles(starter[0], starter[1:])
	}

	return append(result, starter...)
}

func removeDivisibles(divisor int, starter []int) []int {
	result := []int{}

	for _, item := range starter {
		if item%divisor != 0 {
			result = append(result, item)
		}
	}
	return result
}
