import UIKit

class VirtualBankSystem {
    var accountType = ""
    
    func greeting() {
        print("Welcome to the g33ky virtual bank system!")
    }
    func onboardCustomerAccountOpening() {
        print("What kind of account would you like to open?")
        print("")
        print("1. Debit Account")
        print("2. Credit Account")
    }
    func makeAccount(numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input: \(numberPadKey)")
            return
        }
        print("You have opened a \(accountType) account.")
    }
}

let virtualBankSystem = VirtualBankSystem()
virtualBankSystem.greeting()
repeat {
    virtualBankSystem.onboardCustomerAccountOpening()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
} while virtualBankSystem.accountType == ""
