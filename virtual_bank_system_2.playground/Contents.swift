import UIKit

struct BankAccount {
    var debitBalance = 0
    var creditBalance = 0
    let creditLimit = 100
    
    var debitBalanceInfo: String {
        "Debit balance: $\(debitBalance)"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    var creditBalanceInfo: String {
        "Available credit: $\(availableCredit)"
    }
    mutating func debitDeposit(_ amount: Int) {
        debitBalance += amount
        print("Debit deposit: $\(amount). \(debitBalanceInfo)")
    }
    mutating func debitWithdrawal(_ amount: Int) {
        if amount > debitBalance {
                    print("Insufficient funds to withdraw $\(amount). \(debitBalanceInfo)")
                } else {
                    debitBalance -= amount
                    print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
                }
    }
    mutating func creditDeposit(_ amount: Int) {
        creditBalance += amount
        print("Credit deposit: $\(amount). Balance: $\(creditBalanceInfo)")
        if creditBalance == 0 {
            print("Credit balance paid off!!")
        } else if creditBalance > 0 {
            print("Ya overpaid, dude...")
        }
    }
    mutating func creditWithdrawal(_ amount: Int) {
        if amount > availableCredit {
            print("No go, dude, INSF FUNDS! Ya can't withdraw $\(amount), dude. \(creditBalanceInfo).")
        } else {
            creditBalance -= amount
            print("Ya withdrew $\(amount) - \(creditBalanceInfo).")
        }
    }
}

var bankAccount = BankAccount()
print(bankAccount.debitBalanceInfo)
bankAccount.debitDeposit(100)
bankAccount.debitWithdrawal(20)
bankAccount.debitWithdrawal(81)
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdrawal(101)
bankAccount.creditWithdrawal(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)
