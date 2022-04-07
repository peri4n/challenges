package blackjack

const SPLIT = "P"
const STAND = "S"
const WIN = "W"
const HIT = "H"

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
	switch card {
    case "ace": return 11
    case "king": return 10
    case "queen": return 10
    case "jack": return 10
    case "ten": return 10
    case "nine": return 9
    case "eight": return 8
    case "seven": return 7
    case "six": return 6
    case "five": return 5
    case "four": return 4
    case "three": return 3
    case "two": return 2
    default: return 0
	}
}

func blackJack(card1, card2 string) bool {
  return ParseCard(card1) + ParseCard(card2) == 21
}

// FirstTurn returns the decision for the first turn, given two cards of the
// player and one card of the dealer.
func FirstTurn(card1, card2, dealerCard string) string {
  var sum int = ParseCard(card1) + ParseCard(card2)
	if card1 == "ace" && card2 == "ace" {
    return SPLIT
  } else if blackJack(card1, card2) {
    if ParseCard(dealerCard) < 10 {
      return WIN
    } else {
      return STAND
    }
  } else if 17 <= sum && sum <= 20 {
    return STAND
  } else if 12 <= sum && sum <= 16 {
    if ParseCard(dealerCard) >= 7 {
      return HIT
    } else {
      return STAND
    }
  } else {
    return HIT
  }
}
