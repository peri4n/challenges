// Package weather formats weather conditions.
package weather

// CurrentCondition stores the current conditions.
var CurrentCondition string

// CurrentLocation stores the current location.
var CurrentLocation string

// Forecast formats the weather condition for a given location.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
