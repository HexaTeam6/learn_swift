import Cocoa

//Objectives : mengubah celcius menjadi fahrenheit

//buat constant celcius
let celcius = 31

//buat variable fahrenheit
var fahrenheit = Double(celcius) * 9 / 5 + 32

//string interpolation
print("Celcius: \(celcius)")
print("Fahrenheit: \(fahrenheit)")
