//
//  Character.swift
//  FightGame
//
//  Created by Wass on 07/11/2022.
//

import Foundation


// Creation of the characters Classes.

class Character {
    
    var type : String
    var name : String
    var health : Int
    var dammage : Int
    
    
    // Attack function.
    
    func action(target:Character) -> Int {
        var dammageCount: Int = 0
        dammageCount += dammage
        target.health -= dammage
        print("Ahhhhh !!! You hurt \(target.name) the \(target.type), he has \(target.health) life points yet !")
        return dammageCount
    }
    
    
    // Function to create a specific character.

    func createCharacter() -> Character {
        let character:Character
        print("Select 1 for a warrior, 2 for a magus and 3 for a dwarf ?")
        let input = readInt()
        switch input {
            
        case 1:
            character = Warrior()
            character.name = character.arrayName()
        case 2:
            character = Magus()
            character.name = character.arrayName()
        case 3:
            character = Dwarf()
            character.name = character.arrayName()
        default:
            print("Please, select 1, 2 or 3")
            character = createCharacter()
        }
        
        return character
    }

    
    
    // Function to name the character.
    
    func characterName() -> String {
        print("What is the name of your character ?")
        if let name = readLine() {
            
            return name
            
        }
        return characterName()
    }
    
  
    static var newArrayName: [String] = []

    func arrayName() -> String {
        var name = characterName()
        if Character.newArrayName.contains(name) {
            print("This name is already used \n Try an other name.")
            name = arrayName()
        }
        else if name == "" {
            print("The name should contain a value \n Try again.")
            name = arrayName()
        }
        else {
            Character.newArrayName.append(name)
            print(Character.newArrayName)
        }
        
        return name
        
    }

    init(type _type: String, name _name:String, health _health:Int, dammage _dammage:Int ) {
        type = _type
        name = _name
        health = _health
        dammage = _dammage
        
    }
}

class Warrior: Character {
    init() {
        let characterType = "Warrior"
        let warriorName = "Bob"
        let warriorHealth = 100
        let sword = Sword()
        super.init(type:characterType, name: warriorName, health: warriorHealth, dammage: sword.weaponDammage)
    }
}

class Magus: Character {
    
    override func action(target:Character) -> Int {
        if((target.type == "Warrior" && target.health <= 85) || (target.type == "Magus" && target.health <= 135) || (target.type == "Dwarf" && target.health <= 55)  ) {
            print("+\(dammage) life points !")
            target.health += dammage
            print(target.health)
        }
        else {
            print("No effect")
        }
        return 0
    }

    
    init() {
        let characterType = "Magus"
        let magusName = "Joe"
        let magusHealth = 150
        let stick = Stick()
                
        super.init(type:characterType, name: magusName, health: magusHealth, dammage: stick.weaponDammage)
    }
}

class Dwarf: Character {
    init() {
        let characterType = "Dwarf"
        let dwarfName = "Will"
        let dwarfHealth = 70
        let axe = Axe()
        super.init(type:characterType, name: dwarfName, health: dwarfHealth, dammage: axe.weaponDammage)
    }
    
}
