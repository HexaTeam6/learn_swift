import Cocoa
import Darwin

enum errors: Error {
    case toHigh, toLow, noRoot
}

let number = 101

func squareRoot(number: Int) throws -> Int{
    if number > 1000 { throw errors.toHigh }
    else if number < 1 { throw errors.toLow }
    else{
        for i in 1...100 {
            if i * i > number { break }
            else if i * i == number { return i }
        }
        
        throw errors.noRoot
    }
}

do {
    let roots = try squareRoot(number: number)
    print("Root for \(number) is \(roots)")
} catch errors.toHigh {
    print("Angka terlalu tinggi")
} catch errors.toLow {
    print("Angka terlalu rendah")
} catch {
    print("Root for \(number) is not found")
}
