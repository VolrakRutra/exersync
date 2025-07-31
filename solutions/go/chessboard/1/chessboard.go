package chessboard

// Declare a type named File which stores if a square is occupied by a piece - this will be a slice of bools
type File []bool

// Declare a type named Chessboard which contains a map of eight Files, accessed with keys from "A" to "H"

type Chessboard map[string]File

// CountInFile returns how many squares are occupied in the chessboard,
// within the given file.
func CountInFile(cb Chessboard, file string) int {
	f, ok := cb[file]

	result := 0
	if !ok {
		return result
	}

	for _, square := range f {
		if square {
			result += 1
		}
	}
	return result
}

// CountInRank returns how many squares are occupied in the chessboard,
// within the given rank.
func CountInRank(cb Chessboard, rank int) int {
	result := 0
	if rank <= 0 || rank > 8 {
		return result
	}

	for _, vals := range cb {
		if vals[rank-1] {
			result++
		}
	}
	return result

}

// CountAll should count how many squares are present in the chessboard.
func CountAll(cb Chessboard) int {
	result := 0

	for _, file := range cb {
		for range file {
			result++
		}
	}

	return result
}

// CountOccupied returns how many squares are occupied in the chessboard.
func CountOccupied(cb Chessboard) int {
	result := 0

	for _, file := range cb {
		for _, square := range file {
			if square {
				result++
			}
		}
	}

	return result
}
