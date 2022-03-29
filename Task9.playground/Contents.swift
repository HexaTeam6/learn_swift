import Cocoa

func getRand(arr: [Int]) -> Int {
    arr.randomElement() ?? Int.random(in: 1...100)
}

let arr: [Int] = [12, 89, 23, 83, 64, 25]
let emptyArr: [Int] = [Int]()
print(getRand(arr: arr))
print(getRand(arr: emptyArr))
