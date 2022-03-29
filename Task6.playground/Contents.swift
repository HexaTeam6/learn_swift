import Cocoa

struct Car {
    let model: String
    let seats: Int
    private(set) var gears: Int {
        willSet{
            print("Current gear is \(self.gears)")
        }
        didSet{
            print("Gear is updated to \(self.gears)")
        }
    }
    
    init(model: String, seats: Int, gears: Int){
        self.model = model
        self.seats = seats
        self.gears = gears
    }
    
    mutating func gearUp(value: Int){
        if(self.gears + value > 10){
            print("Gear is to high")
        }
        else{
            self.gears += value
        }
    }
    
    mutating func gearDown(value: Int){
        if(self.gears - value < 1){
            print("Gear is to low")
        }
        else{
            self.gears -= value
        }
    }
}

var myCar = Car(model: "Toyota", seats: 4, gears: 3)
print(myCar.model)
print(myCar.seats)
myCar.gearUp(value: 5)
myCar.gearDown(value: 7)
