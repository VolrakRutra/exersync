package booking

import (
	"fmt"
	"time"
)

// Schedule returns a time.Time from a string containing a date.
func Schedule(date string) time.Time {
	parsed, _ := time.Parse("1/02/2006 15:04:05", date)
	return time.Date(parsed.Year(), parsed.Month(), parsed.Day(), parsed.Hour(), parsed.Minute(), parsed.Second(), parsed.Nanosecond(), time.UTC)
}

// HasPassed returns whether a date has passed.
func HasPassed(date string) bool {
	parsed, _ := time.Parse("January 2, 2006 15:04:05", date)
	return time.Now().After(parsed)
}

// IsAfternoonAppointment returns whether a time is in the afternoon.
func IsAfternoonAppointment(date string) bool {
	parsed, _ := time.Parse("Monday, January 2, 2006 15:04:05", date)
	return parsed.Hour() >= 12 && parsed.Hour() < 18
}

// Description returns a formatted string of the appointment time.
func Description(date string) string {
	parsed, _ := time.Parse("1/2/2006 15:04:05", date)
	return fmt.Sprintf("You have an appointment on %v, %v %v, %v, at %v:%v.", parsed.Weekday(), parsed.Month(), parsed.Day(), parsed.Year(), parsed.Hour(), parsed.Minute())
}

// AnniversaryDate returns a Time with this year's anniversary.
func AnniversaryDate() time.Time {
	return time.Date(time.Now().Year(), time.September, 15, 0, 0, 0, 0, time.UTC)
}
