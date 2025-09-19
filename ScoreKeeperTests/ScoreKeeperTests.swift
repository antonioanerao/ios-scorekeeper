import Testing
@testable import ScoreKeeper

struct ScoreKeeperTests {

    @Test("Reset player scores", arguments: [0, 10, 20])
    func resetScore(to newValue: Int) async throws {
        var scoreboard = Scoreboard(players: [
            Player(name: "Antonio", score: 2),
            Player(name: "Laura", score: 3)
        ])
        
        scoreboard.resetScores(to: newValue)
        
        for player in scoreboard.players {
            #expect(player.score == newValue)
        }
    }
}
