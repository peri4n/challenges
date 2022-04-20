package booking

import "time"

// Schedule returns a time.Time from a string containing a date
func Schedule(date string) time.Time {
  v, _ := time.Parse("1/2/2006 15:04:05", date)
  return v
}

// HasPassed returns whether a date has passed
func HasPassed(date string) bool {
  v, _ := time.Parse("January 2, 2006 15:04:05", date)
	return v.Before(time.Now())
}

// IsAfternoonAppointment returns whether a time is in the afternoon
func IsAfternoonAppointment(date string) bool {
  v, _ := time.Parse("Monday, January 2, 2006 15:04:05", date)
  h, _, _ := v.Clock()
  return 12 <= h && h < 18
}

// Description returns a formatted string of the appointment time
func Description(date string) string {
  return "You have an appointment on " + Schedule(date).Format("Monday, January 2, 2006, at 15:04.")
}

// AnniversaryDate returns a Time with this year's anniversary
func AnniversaryDate() time.Time {
  v, _ := time.Parse("2006-01-02", "2022-09-15")
  return v
}
