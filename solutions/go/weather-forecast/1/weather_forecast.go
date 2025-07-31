// Package weather is a package to predict the weather.
package weather

// CurrentCondition is the string describing the current weather.
var CurrentCondition string
// CurrentLocation is the string describing the location of the current weather.
var CurrentLocation string

// Forecast predicts and returns the current weather at current location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
