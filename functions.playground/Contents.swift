import UIKit

func showPhi(){
    print("The value of Phi is (√5 + 1) ÷ 2")
}
showPhi()

func double(passedValue: Int) {
    let result = passedValue * 2
    print("Double \(passedValue) is \(result).")
}
double(passedValue:19)

func multiply(firstVal: Int, secondVal: Int) -> Int {
    let result = firstVal * secondVal
    return result
}
let result = multiply(firstVal: 10, secondVal: 10)
print(result)

func increment(number: inout Int) {
    number += 1
}
var number = 0
increment(number: &number)
print(number)

print("-------------------------Functions Lab-------------------------")

var goldBars = 0

func unlockChest(inventory: Int) -> Int {
    return inventory+100
}
 goldBars = unlockChest(inventory:goldBars)
print(goldBars)
goldBars = unlockChest(inventory:goldBars)
print(goldBars)
goldBars = unlockChest(inventory:goldBars)
print(goldBars)

func hiThere(firstName fn: String, lastName sn: String, score: Int = 0) {
    let fullName = fn + " " + sn + " " + String(score)
    print("Hiya, \(fullName)!")
}
hiThere(firstName: "Jesse", lastName: "Asshole")
hiThere(firstName: "Jesse", lastName: "Asshole", score: 100)

print("------------------------Functions Lab 2------------------------")


var goldBars = 0
func incrementInventory(_ inventory: inout Int, by amount: Int = 100) {
  inventory += amount
}
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars)
print(goldBars)
incrementInventory(&goldBars, by: 300)
print(goldBars)
incrementInventory(&goldBars, by: 50)
print(goldBars)
