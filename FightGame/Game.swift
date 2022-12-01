//
//  Game.swift
//  
//
//  Created by Wass on 19/10/2022.
//

import Foundation


// Creation of the "Game" Class.


class Game {
    var player1: Player
    var player2: Player
    
    private func party() {
        
        let selectedFighterPlayer1 =  player1.selectFighter()
         
        if(selectedFighterPlayer1.type == "Magus") {
            player1.selectTarget(attacker: selectedFighterPlayer1)
        }
        else {
            player2.selectTarget(attacker: selectedFighterPlayer1)
        }
        let selectedFighterPlayer2 = player2.selectFighter()
        
        if (selectedFighterPlayer2.type == "Magus") {
           player2.selectTarget(attacker: selectedFighterPlayer2)
        }
        else {
          player1.selectTarget(attacker: selectedFighterPlayer2)
        }
        
    }
    
    // Fight function
    
    private func fight() -> Int{
        var turn: Int = 0
        while (player1.character1.health > 0 || player1.character2.health > 0 || player1.character3.health > 0 ) || (player2.character1.health > 0 || player2.character2.health > 0 || player2.character3.health > 0){
            party()
            turn += 1
            
        }
        return turn
    }
    
    
    private func gameOver(turn:Int ) {
        print("Game over")
        print(" player 1 dammage : \(player1.dammage)")
        print(" player 2 dammage : \(player1.dammage)")
        print("End of the game at the \(turn) turn")
    }
    
   

    init() {
        print("Dear players! A war will soon break out in the kingdom of Azrium. You have to choose your best fighters to win it ! \n First Player1 select 3 characters, then Player2 select yours. \n May the best win !")
        player1 = Player(playerName: "Player 1")
        player2 = Player(playerName: "player 2")
       let turn = fight()
        gameOver(turn: turn)
        
        
    }
    
    
}

// ReadInt function.

func readInt() -> Int {
    if let input = readLine() {
        if let myInt1 = Int(input) {
            return myInt1
        }
    }
    return readInt()
}






