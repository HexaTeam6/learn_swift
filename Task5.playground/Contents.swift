import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func doingWork(data: [Int], filter: ([Int]) -> [Int], sort: ([Int]) -> [Int], map: ([Int]) -> [String]) -> Void{
    let filtered = filter(data)
    let sorted = sort(filtered)
    let hasMap = map(sorted)
    
    for item in hasMap {
        print(item)
    }
    
}

doingWork(data: luckyNumbers){ (arr: [Int]) in
    arr.filter{ item in
        return !item.isMultiple(of: 2)
    }
} sort: { (arr: [Int]) in
    arr.sorted{
        return $0 < $1
    }
} map: { (arr: [Int]) in
    arr.map{ item in
        "\(item) is a lucky number"
    }
}
