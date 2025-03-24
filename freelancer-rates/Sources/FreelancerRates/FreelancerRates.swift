func dailyRateFrom(hourlyRate: Int) -> Double {
    let HOURS_PER_DAY = 8.0
    let dailyRate = Double(hourlyRate) * HOURS_PER_DAY
    return dailyRate
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
    let DAYS_PER_MONTH = 22.0
    let monthlyRate = DAYS_PER_MONTH * dailyRateFrom(hourlyRate: hourlyRate)
    let discountedMonthlyRate = monthlyRate * (1 - (discount/100))
    return discountedMonthlyRate.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
    let dailyRate = dailyRateFrom(hourlyRate: hourlyRate) * (1 - (discount/100))
    return (budget/dailyRate).rounded(.down)
}
