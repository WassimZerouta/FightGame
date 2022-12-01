//
//  Weapon.swift
//  FightGame
//
//  Created by Wass on 07/11/2022.
//

import Foundation

// Creation of the weapons classes

class Weapon {
    var weaponDammage:Int = 10
    init(weaponDammage dammage: Int) {
        weaponDammage = dammage
    }
}

class Stick: Weapon {
    init() {
        let dammage:Int = 15
        super.init(weaponDammage: dammage)
    }
}

class Sword: Weapon {
    init() {
        let dammage:Int = 25
        super.init(weaponDammage: dammage)
    }
}

class Axe: Weapon {
    init() {
        let dammage:Int = 35
        super.init(weaponDammage: dammage)
    }
}

