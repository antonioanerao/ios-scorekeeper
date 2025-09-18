import Foundation

struct Scoreboard {
    var players: [Player] = [
        Player(name: "Laura", score: 0),
        Player(name: "Antonio", score: 0),
        Player(name: "Luiz", score: 0)
    ]
    
    var state = GameState.setup
}
