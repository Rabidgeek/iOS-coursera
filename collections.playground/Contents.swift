import UIKit

var levelScores = [10, 20, 30, 40, 50, 60, 70]

for (level, score) in levelScores.enumerated() {
    print("The score of level \(level+1) is \(score). ")
}

var gameScore = 0
for levelScore in levelScores {
    gameScore += levelScore
}
print("The game score is \(gameScore).")

let weeklyTemps = [
    "Monday": 70, "Tuesday": 75, "Wednesday": 80, "Thursday": 85,
    "Friday": 90, "Saturday": 95, "Sunday": 100,
]
for (day, temp) in weeklyTemps {
    print("The temp on \(day) is \(temp) degrees Fahrenheit.")
}
let days =  ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let temperatures = [70, 75, 80, 85, 90, 95, 100]
for idx in 0...6 {
    print("The temp on \(days[idx]) is \(temperatures[idx]) degrees Fahrenheit.")
}
