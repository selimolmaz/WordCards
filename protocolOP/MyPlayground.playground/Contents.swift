import Foundation

protocol Character {
    var name: String { get }
    var healthPoints: Int { get set }
    var attackPoints: Int { get }
    
    func attack(_ opponent: Character)
}

class Warrior: Character {
    var name: String
    var healthPoints: Int
    var attackPoints: Int
    
    init(name: String, healthPoints: Int, attackPoints: Int) {
        self.name = name
        self.healthPoints = healthPoints
        self.attackPoints = attackPoints
    }
    // "_" is using for easy type. noramally when users wanna call this function, they have to type (opponent: CH). However, if you use "_" then they can type (CH) only
    func attack(_ opponent: Character) {
        //handle let
        var opponent = opponent
        opponent.healthPoints -= attackPoints
    }
}

var player = Warrior(name: "Player", healthPoints: 100, attackPoints: 20)
var enemy = Warrior(name: "Enemy", healthPoints: 80, attackPoints: 15)

print("Enemy's helath bf fight: \(enemy.healthPoints)")
player.attack(enemy)

print("Player's health: \(player.healthPoints)")
print("Enemy's health: \(enemy.healthPoints)")


