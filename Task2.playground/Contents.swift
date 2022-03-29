import Cocoa

//Objectives : Mencari jumlah kata yang sama pada array

//definisikan array
let fruits: Array = ["Apple", "Apple", "Banana", "Orange", "Orange", "Orange"]

//definisikan set
let uniqueFruits: Set = Set(fruits)

//tampilkan jumlah kata yang sama
print(fruits.count - uniqueFruits.count)
