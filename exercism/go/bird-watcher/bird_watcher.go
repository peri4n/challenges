package birdwatcher

// TotalBirdCount return the total bird count by summing
// the individual day's counts.
func TotalBirdCount(birdsPerDay []int) int {
  sum := 0
  for _, v := range birdsPerDay {
    sum += v
  }
  return sum
}

// BirdsInWeek returns the total bird count by summing
// only the items belonging to the given week.
func BirdsInWeek(birdsPerDay []int, week int) int {
  start := (week - 1) * 7
  end := week * 7
  return TotalBirdCount(birdsPerDay[start:end])
}

// FixBirdCountLog returns the bird counts after correcting
// the bird counts for alternate days.
func FixBirdCountLog(birdsPerDay []int) []int {
  for i, v := range birdsPerDay {
    if i % 2 != 1 {
      birdsPerDay[i] = v + 1
    }
  }
  return birdsPerDay
}
