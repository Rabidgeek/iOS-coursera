import UIKit

let credentials = ("", -1111)
let fullCredentials = (password: "pass", passcode: 1111)

if fullCredentials.password == "" || fullCredentials.passcode < 0 {
    print("INVALID CREDENTIALS MOFO!")
} else {
    print("The username is \(fullCredentials.password) and the password is \(fullCredentials.passcode)")
}
