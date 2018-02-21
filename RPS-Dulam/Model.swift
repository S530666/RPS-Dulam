//
//  Model.swift
//  RPS-Dulam
//
//  Created by Dulam,Surya Chandra Phani Santhosh on 2/20/18.
//  Copyright © 2018 Dulam,Surya Chandra Phani Santhosh. All rights reserved.
//

import Foundation

enum Choice {
    case None, Rock, Paper, Scissor , Spock , Lizzard
}

class Model {
    private var player1Choice:Choice
    private var player2Choice:Choice
    private var _p1 : Int = 0
    private var _p2 : Int = 0
    var p1 : Int {
        return _p1
    }
    var p2 : Int {
        return _p2
    }
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
        _p1 = 0
        _p2 = 0
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
        else if (player1Choice == Choice.Paper && ((player2Choice == Choice.Rock)||(player2Choice == Choice.Spock)))
            || (player1Choice == Choice.Rock && ((player2Choice == Choice.Lizzard)||(player2Choice == Choice.Scissor)))
            || (player1Choice == Choice.Scissor && ((player2Choice == Choice.Lizzard)||(player2Choice == Choice.Paper)))
            || (player1Choice == Choice.Spock && ((player2Choice == Choice.Rock)||(player2Choice == Choice.Scissor)))
            || (player1Choice == Choice.Lizzard && ((player2Choice == Choice.Paper)||(player2Choice == Choice.Spock)))
        {
            _p1 += 1
            return "Player 1 wins"
        }
        else {
            _p2 += 1
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
