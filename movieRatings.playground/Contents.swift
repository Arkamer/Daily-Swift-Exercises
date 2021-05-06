import Cocoa

var movieRatings = ["Tron": 4, "WarGames": 5, "Sneakers": 4]
movieRatings.count
let tronRating = movieRatings["Tron"]
let primerRating = movieRatings["Primer"]
movieRatings["Sneakers"] = 5
movieRatings

let oldRating: Int? = movieRatings.updateValue(5, forKey: "Tron")
if let lastRating = oldRating, let currentRating = movieRatings["Tron"] {
    print("old rating: \(lastRating)")
    print("current rating: \(currentRating)")
}
movieRatings["Hackers"] = 5
movieRatings["Sneakers"] = nil
for (key, value) in movieRatings {
    print("The movie \(key) was rated \(value)")
}
for movie in movieRatings.keys {
    print("User has rated \(movie)")
}
let watchedMovies = Array(movieRatings.keys)

let league = ["Náutico":["Kuki", "Nilsinho", "Flávio", "Eduardo", "Bebeto"], "Santa Cruz": ["Gomide", "Adriano", "Fofão", "Biro-biro", "Bala"], "Sport": ["Gomes", "Ricardo", "Dodô", "Nelson", "Carlos"]]

let players = Array(league.values)
var names = [String]()
for values in players {
    names.append(contentsOf: values)
}
names.count
print("The NWSL has the following players: \(names)")

for item in names {
    print(item)
}

for item in league {
    let team = item.key
    let name: [String] = item.value
    for names in name {
        print("Jogadores do \(team):\n\(names)\n", separator: "\n")
    }
    
}
