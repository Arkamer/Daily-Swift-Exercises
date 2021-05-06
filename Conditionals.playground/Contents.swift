
let population: Int = 5422
let message: String
let hasPostOffice: Bool = true

if population < 1000 {
    message = "\(population) is a small town!"
} else if population >= 1000 && population < 5000 {
    message = "\(population) is a medium town."
} else if population > 50000 {
    message = "\(population) is pretty big!"
}

//message = population < 1000 ?
//    "\(population) is a small town!" :
//    "\(population) is pretty big!"
//print(message)

if !hasPostOffice {
    print("Where do we buy stamps?")
}
