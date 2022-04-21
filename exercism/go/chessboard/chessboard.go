package chessboard

// Declare a type named Rank which stores if a square is occupied by a piece - this will be a slice of bools
type Rank = []bool

// Declare a type named Chessboard which contains a map of eight Ranks, accessed with keys from "A" to "H"
type Chessboard map[string]Rank

var ranks = []string{"A", "B", "C", "D", "E", "F", "G", "H"}

// CountInRank returns how many squares are occupied in the chessboard,
// within the given rank
func CountInRank(cb Chessboard, rank string) int {
	sum := 0
	for _, v := range cb[rank] {
		if v {
			sum++
		}
	}
	return sum
}

// CountInFile returns how many squares are occupied in the chessboard,
// within the given file
func CountInFile(cb Chessboard, file int) int {
	if 0 > file || file > 8 {
		return 0
	}

	sum := 0
	for _, r := range ranks {
		if cb[r][file-1] {
			sum++
		}
	}
	return sum
}

// CountAll should count how many squares are present in the chessboard
func CountAll(cb Chessboard) int {
	return 64
}

// CountOccupied returns how many squares are occupied in the chessboard
func CountOccupied(cb Chessboard) int {
	sum := 0
	for _, v := range cb {
		for _, v2 := range v {
			if v2 {
				sum++
			}
		}
	}
	return sum
}
