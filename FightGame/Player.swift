//
//  Player.swift
//  FightGame
//
//  Created by Wass on 07/11/2022.
//

import Foundation

// Creation of the "Player" Class.

class Player {
    var playerName:String
    var character1:Character = Character(type:"Warrior", name: "Joe", health: 100, dammage: 25)
    var character2:Character = Character(type:"Warrior", name: "Joe", health: 100, dammage: 25)
    var character3:Character = Character(type:"Warrior", name: "Joe", health: 100, dammage: 25)
    var dammage: Int = 0
    
    // Function to select fighter.
    
    func selectFighter() -> Character {
        print("\(playerName), Which character would you select ? \(character1.name) the \(character1.type) , \(character2.name) the \(character2.type) or \(character3.name) the \(character3.type)")
        let fighter:Character
        let input = readInt()
        switch input {
            
        case 1:
            if(character1.health > 0){
                fighter = character1
            }
            else {
                print("This character is not alive !")
               fighter = selectFighter()
            }
            print(character1.name)
        case 2:
            if(character2.health > 0){
                fighter = character2
            }
            else {
                print("This character is not alive !")
               fighter = selectFighter()
            }
            print(character2.name)
        case 3:
            if(character3.health > 0){
                fighter = character3
            }
            else {
                print("This character is not alive !")
               fighter = selectFighter()
            }
            print(character3.name)
        default:
            print("Please, select 1, 2 or 3.")
            fighter =  selectFighter()
        }
        return fighter
    }
    
    
    
    // Function to select your target.
    
    func selectTarget(attacker:Character)  {
        print("Wich target would you fight ? \(character1.name) the \(character1.type) , \(character2.name) the \(character2.type) or \(character3.name) the \(character3.type).")
        let target:Character
        let input = readInt()
        
            switch input {
                
            case 1:
                if(character1.health > 0){
                    target = character1
                    dammage += attacker.action(target: target)
                    print(character1.name)
                    
                }
                else {
                    print("This target is not alive !")
                    selectTarget(attacker: attacker)
                }
            case 2:
                if(character2.health > 0){
                    target = character2
                   dammage += attacker.action(target: target)
                    print(character2.name)
                    
                }
                else {
                    print("This target is not alive !")
                     selectTarget(attacker: attacker)
                }
            case 3:
                if(character3.health > 0){
                    target = character3
                   dammage += attacker.action(target: target)
                    print(character1.name)
                    
                }
                else {
                    print("This target is not alive !")
                    selectTarget(attacker: attacker)
                }
                
            default:
                print("Please, select 1, 2 or 3.")
                 selectTarget(attacker: attacker)
                
            }
        
    }
    
    
    init(playerName _playerName:String) {
        playerName = _playerName
        character1 = character1.createCharacter()
        character2 = character2.createCharacter()
        character3 = character3.createCharacter()
    }
}
