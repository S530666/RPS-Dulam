//
//  FirstViewController.swift
//  RPS-Dulam
//
//  Created by Dulam,Surya Chandra Phani Santhosh on 2/20/18.
//  Copyright © 2018 Dulam,Surya Chandra Phani Santhosh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    
    @IBOutlet weak var player1: UITextField!
    
    
    @IBOutlet weak var player1tab: UITabBarItem!
    @IBOutlet weak var sel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.model.player1 == .None {
            sel.text = "Make a selection"
            spb.isEnabled = true
            rb.isEnabled = true
            pb.isEnabled = true
            lb.isEnabled = true
            sb.isEnabled = true
        }
        else {
            sel.text = "You have selected \(AppDelegate.model.player1)!, change if you want."
            spb.isEnabled = false
            rb.isEnabled = false
            pb.isEnabled = false
            lb.isEnabled = false
            sb.isEnabled = false
        }
    }
    @IBOutlet weak var sb: UIButton!
    @IBOutlet weak var lb: UIButton!
    
    @IBOutlet weak var spb: UIButton!
    @IBOutlet weak var pb: UIButton!
    @IBOutlet weak var rb: UIButton!
    
    @IBAction func Player1A(_ sender: UITextField) {
        player1tab.title = player1.text!
    }
    
    
    @IBAction func ScissorA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick: .Scissor)
        sel.text = "You have selected \(AppDelegate.model.player1)! change if you want."
    }
    
//    @IBAction func Scissors(_ sender: UIButton) {
//        AppDelegate.model.choosePlayer1(pick: .Scissor)
//        sel.text = "You have selected \(AppDelegate.model.player1)! \n change if you want."
//    }
//
//
//    @IBAction func RockA(_ sender: UIButton) {
//        AppDelegate.model.choosePlayer1(pick: .Rock)
//        sel.text = "You have selected \(AppDelegate.model.player1)!, change if you want."
//    }
//
//    @IBAction func PaperA(_ sender: UIButton) {
//        AppDelegate.model.choosePlayer1(pick: .Paper)
//        sel.text = "You selected \(AppDelegate.model.player1)!, change if you want."
//    }
    
    @IBAction func RockA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick: .Rock)
        sel.text = "You have selected \(AppDelegate.model.player1)!, change if you want."
    }
    @IBAction func PaperA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick: .Paper)
        sel.text = "You have selected \(AppDelegate.model.player1)!, change if you want."
    }
    
    @IBAction func LizzardA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick: .Lizzard)
        sel.text = "You have selected \(AppDelegate.model.player1)!, change if you want."
    }
    @IBAction func SpockA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer1(pick: .Spock)
        sel.text = "You have selected \(AppDelegate.model.player1)!, change if you want."
    }
   
    
}

