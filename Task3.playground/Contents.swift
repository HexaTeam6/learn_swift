import Cocoa

/*
 Objectives
 lakukan looping dari 1-100
 jika angka tersebut kelipatan 3 print Fizz
 jika angka tersebut kelipatan 5 print Buzz
 */

//membuat loop
for i in 1...100 {
    if i.isMultiple(of: 3) {
        print("Fizz")
    }
    else if i.isMultiple(of: 5){
        print("Buzz")
    }
    else {
        print(i)
    }
}
