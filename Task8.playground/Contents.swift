import Cocoa

protocol Building{
    var rooms: Int { get set }
    var costs: Int { get set }
    var agentName : String { get }
    
    func summary() -> String
}

extension Building {
    func calculateBuildCost() -> Int{
        self.costs * self.rooms
    }
}

struct House:Building {
    var rooms = 4
    var costs = 10000
    var agentName = "Alex"
    var type = "A"
    
    func summary() -> String{
        """
        ---- HOUSE SUMMARY ----
        Total rooms: \(rooms)
        Cost: \(costs)
        Agent Name: \(agentName)
        """
    }
}

struct Office:Building {
    var rooms = 12
    var costs = 14000
    var agentName = "Bimo"
    var type = "B"
    
    func summary() -> String{
        """
        ---- OFFICE SUMMARY ----
        Total rooms: \(rooms)
        Cost: \(costs)
        Agent Name: \(agentName)
        """
    }
}

var myHouse = House()
var myOffice = Office()
print(myHouse.summary())
print("Total cost build : \(myHouse.calculateBuildCost())")
print(myOffice.summary())
print("Total cost build : \(myOffice.calculateBuildCost())")
