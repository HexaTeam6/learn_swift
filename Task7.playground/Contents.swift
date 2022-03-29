import Cocoa

class Animal {
    private var legs: Int
    
    init(legs: Int){
        self.legs = legs
    }
}

class Dog:Animal {
    func speak(){
        print("Wof wof!")
    }
}

class Corgi:Dog {
    override func speak() {
        print("Wuf wuf wuf!")
    }
}

class Poodle:Dog {
    override func speak() {
        print("Waf waf!")
    }
}

class Cat:Animal {
    private var isTame: Bool
    
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
    
    func speak(){
        print("Meow meow!")
    }
}

class Persian:Cat {
    override func speak() {
        print("Mrrr mrrr!")
    }
}

class Lion:Cat {
    override func speak() {
        print("Rawr rawr!")
    }
}

var dog = Dog(legs: 4)
dog.speak()

var lion = Lion(legs: 4, isTame: false)
lion.speak()
