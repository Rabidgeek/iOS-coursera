import UIKit

struct Car {
    var color: String
    var name: String
    var topSpeed: Int
    var mileage: Int
    
    func drive() {
        print("The \(color) car tops out at \(topSpeed) mph!")
    }
}

var newCar = Car(color: "blue", name: "Ford", topSpeed: 100, mileage: 50000)
var myCar = Car(color: "pink", name: "Car 2", topSpeed: 100, mileage: 4000)
var smallCar = Car(color: "orange", name: "Car 3", topSpeed: 80, mileage: 3000)

print("My \(newCar.name) is \(newCar.color), tops out at \(newCar.topSpeed) mph, and has \(newCar.mileage) miles on it.")
newCar.drive()

print("-------------------------------Struct Exercise-------------------------------")

struct TableReservation {
    var name: String
    let tableNumber: Int
    
    mutating func updateBooking(updatedName: String) {
        name = updatedName
    }
}
var johnBooking = TableReservation(name: "John", tableNumber: 1)
print(johnBooking)
johnBooking.updateBooking(updatedName: "Maria")
print(johnBooking)
