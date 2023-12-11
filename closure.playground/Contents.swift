import UIKit

print("-------------------------Functions Part 1-------------------------")

var goldBars = 0
let unlockTreasureChest = { (inventory: inout Int) in
    inventory += 100
}
unlockTreasureChest(&goldBars)
print(goldBars)

print("-------------------------Functions Part 2-------------------------")

goldBars = 100

func spendTenGoldBars(from inventory: inout Int, completion: (Int) -> Void) {
    inventory -= 10
    completion(inventory)
}

print("Ya had \(goldBars) gold bars, bruh!")
spendTenGoldBars(from: &goldBars) { goldBars in
    print("Ya just spent ten gold bars, bruh...")
    print("Now ya got just \(goldBars) gold bars!")
}
