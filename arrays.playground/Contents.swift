import UIKit

var levelScores:[Int] = [ ]

if levelScores.isEmpty {
    print("Welcome to the game of HELL!!!")
}

let firstLevelScore = 10

levelScores.append(firstLevelScore)

print("The first level score is \(levelScores[0]).")

let freeLevelScores:[Int] = [20, 30, 40]
levelScores += freeLevelScores
print(levelScores)

var freeLevels = 3

if levelScores.count > freeLevels {
    print("Sorry, bruh, gotta buy the damn game first to play more!")
    levelScores = [ ]
    print("Game reset to level 0!")
}
/// Solution below
/// var levelScores: [Int] = []
/// if levelScores.count == 0 {
///   print("Start playing the game!")
/// }
/// let firstLevelScore = 10
/// levelScores.append(firstLevelScore)
/// print("The first level's score is \(levelScores[0]).")
/// let levelBonusScore = 40
/// levelScores[0] += levelBonusScore
/// print("The first level's score is \(levelScores[0]).")
/// let freeLevelScores = [20, 30]
/// levelScores += freeLevelScores
/// let freeLevels = 3
/// if levelScores.count == freeLevels {
///   print(
///     "You have finished playing the free version of the game. Buy the game to play its full version."
///   )
///   levelScores = []
///   print("Game restarted!")
/// }
