protocol CanFly {
    func fly()
}


class Bird{
    
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("The bird makes a new bird in its shell!" )
        }
    }
}


class Eagle: Bird, CanFly {
    
    func fly() {
        print("The bird flaps its wings")
    }
      
    
    func soar() {
        print("The eagle glides using the air currents")
    }
}

class Penguin: Bird {
    func swim() {
        print("The penguin paddles through the water!")
    }
}

struct Airplane: CanFly{
    func fly() {
        print("The plane takes off")
    }
}
struct FlyingMeuseum {
    
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}



let myEagle = Eagle()
myEagle.fly()
myEagle.layEgg()
myEagle.soar()

let myPenguin = Penguin()
myPenguin.layEgg()
myPenguin.swim()

let myPlane = Airplane()



let museum = FlyingMeuseum()
museum.flyingDemo(flyingObject: myEagle)


