import Cocoa

var myFirstInt: Int = 0

for _ in 1...5 {
    myFirstInt += 2
    print("myFirstInt = \(myFirstInt)")
}

for i in 1...100 where i % 3 == 0 {
    print(i)
}

var  i = 1
while i < 6 {
    myFirstInt += 1
    print(myFirstInt)
    i += 1
}

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0
    while shields > 0 {
        
        if spaceDemonsDestroyed == 500 {
            print("You beat the game!")
            break
        }
        
        if blastersOverheating {
            print("Blasters overheated! Cooldown iniciated.")
            sleep(5)
            print("Blasters ready to fire.")
            sleep(1)
            blastersOverheating = false
            blasterFireCount = 0
    }
        
        if blasterFireCount > 100 {
            blastersOverheating = true
        }
        
        // Fire blasters!
        print("Fire blasters!")
        
        blasterFireCount += 1
        spaceDemonsDestroyed += 1
}

for i in 1...100 {
    
    switch i {
    case _ where i % 3 == 0 && i % 5 == 0:
        print("FIZZ BUZZ")
    case _ where i % 3 == 0:
        print("FIZZ")
    case _ where i % 5 == 0:
        print("BUZZ")
    default:
        print(i)
    }
    /*
    if i % 3 == 0 || i % 5 == 0 {
        
        if i % 3 == 0 {
            print("FIZZ")
        }
        
        if i % 5 == 0 {
            print("BUZZ")
        }
        print("FIZZ BUZZ")
    } else {
        print(i)
    }
    */
}


