package cars

// CalculateWorkingCarsPerHour calculates the number of working cars produced
// by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * successRate / 100
}

// CalculateWorkingCarsPerMinute calculates the number of working cars produced
// by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	carsPerHour := CalculateWorkingCarsPerHour(productionRate, successRate)
	return int(carsPerHour / 60)
}

// CalculateCost calculates the cost of producing the given number of cars.
// The cost is 95000 for every 10 cars, plus 10000 for any remaining cars.
func CalculateCost(carsCount int) uint {
	costPerTen := uint(95000)
	costPerOne := uint(10000)
	tens := carsCount / 10
	remainder := carsCount % 10
	totalCost := uint(tens) * costPerTen
	if remainder > 0 {
		totalCost += uint(remainder) * costPerOne
	}
	return totalCost
}
