import UIKit

var weeklyTemp:[String:Int] = [:]

weeklyTemp = ["Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85, "Friday": 90, "Saturday": 95]
weeklyTemp["Monday"]! += 20
print("The temp on Monday is \(weeklyTemp["Monday"]!) degrees Fahrenheit.")

if let temperature = weeklyTemp["Sunday"] {
    print("The temp on Sunday is \(temperature) degrees Fahrenheit.")
} else {
    weeklyTemp["Sunday"] = 100
    print("The temp on Sunday is \(weeklyTemp["Sunday"]!) degrees Fahrenheit.")
}
if weeklyTemp.count == 7 {
    print("You have access to the week's forecasts.")
    weeklyTemp = [:]
    print("Weekly Temps reset!")
}
