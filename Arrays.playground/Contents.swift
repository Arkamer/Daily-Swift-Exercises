import Cocoa

//var bucketList: Array<String>
var bucketList = ["Climb Mt. Everest"]
bucketList.append("Read War and Peace")
bucketList.append("Go on an Artic expedition")
bucketList.append("Scuba dive in the Great Blue Hole")
bucketList.append("Find a triple rainbow")
bucketList.count
bucketList.remove(at: 1)
bucketList
print(bucketList[...2])
bucketList[1] += " with friends"
bucketList[1]
bucketList[0] = "Climb Mt. Kilimanjaro"
bucketList
bucketList.insert("Tobogan across Alaska", at: 1)
bucketList

var newItems = [
    "Bike across America",
    "Make a perfect souffle",
    "Solve Fermat's enigma"
]

/*
for items in newItems {
    bucketList.append(items)
}
*/
bucketList += newItems
print(bucketList)

var anotherList = [
    "Bike across America",
    "Make a perfect souffle",
    "Solve Fermat's enigma"
]
newItems == anotherList

let lunches = [
    "Cheeseburger",
    "Veggie Pizza",
    "Chicken Ceasar Salad",
    "Black Bean Burrito",
    "Falafel Wrap"
]

//Bronze challenge
var toDoList = [
    "Take out the trash",
    "Pay bills",
    "Cross off finished items"
]

toDoList.isEmpty
toDoList.count

//Silver challenge
toDoList.startIndex
let end = toDoList.endIndex

toDoList.reverse()
//for _ in toDoList {
//    toDoList.reverse()
//}
print(toDoList)

toDoList.sorted()

//Gold challenge
if let i = bucketList.first(where: { $0.contains("Go on an Artic expedition")}) {
    print(bucketList)
}
