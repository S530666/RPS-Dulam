//
//  Model.swift
//  RPS-Dulam
//
//  Created by Dulam,Surya Chandra Phani Santhosh on 2/20/18.
//  Copyright © 2018 Dulam,Surya Chandra Phani Santhosh. All rights reserved.
//

import Foundation

enum Choice {
    case None, Rock, Paper, Scissor
}

class Model {
    private var player1Choice:Choice
    private var player2Choice:Choice
    var p1 : Int = 0
    var p2 : Int = 0
    
    var player1:Choice {
        return player1Choice
    }
    
    var player2:Choice {
        return player2Choice
    }
    
    init(){
        player1Choice = Choice.None
        player2Choice = Choice.None
    }
    
    func reset() {
        player1Choice = Choice.None
        player2Choice = Choice.None
        p1 = 0
        p2 = 0
    }
    
    func haveResult() -> Bool {
        if !(player1Choice == Choice.None) && !(player2Choice == Choice.None){
            return true
        }
        return false
    }
    
    func winner() -> String {
        if (player1Choice == player2Choice) {
            return "Its a Tie"
        }
        else if ((player1Choice == Choice.Paper) && (player2Choice == Choice.Rock))
            || ((player1Choice == Choice.Rock) && (player2Choice == Choice.Scissor))
            || ((player1Choice == Choice.Scissor) && (player2Choice == Choice.Paper)){
            p1 += 1
            return "Player 1 wins"
        }
        else {
            p2 += 1
            return "Player 2 wins"
        }
    }
    
    func choosePlayer1(pick:Choice) {
        player1Choice = pick
    }
    
    func choosePlayer2(pick:Choice) {
        player2Choice = pick
    }
}
