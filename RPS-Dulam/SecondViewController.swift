//
//  SecondViewController.swift
//  RPS-Dulam
//
//  Created by Dulam,Surya Chandra Phani Santhosh on 2/20/18.
//  Copyright © 2018 Dulam,Surya Chandra Phani Santhosh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var msg: UILabel!
    
    
    @IBOutlet weak var player2tab: UITabBarItem!
    
    
    @IBOutlet weak var sel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Sel2(_ sender: UITextField) {
        player2tab.title = sel.text!
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if AppDelegate.model.player2 == .None {
            
            msg.text = "Make a selection"
            spb.isEnabled = true
            rb.isEnabled = true
            pb.isEnabled = true
            lb.isEnabled = true
            sb.isEnabled = true
        }
        else {
            msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
            spb.isEnabled = false
            rb.isEnabled = false
            pb.isEnabled = false
            lb.isEnabled = false
            sb.isEnabled = false
        }
    }
    @IBOutlet weak var sb: UIButton!
    @IBOutlet weak var rb: UIButton!
    @IBOutlet weak var pb: UIButton!
    @IBOutlet weak var spb: UIButton!
    
    @IBOutlet weak var lb: UIButton!
//    @IBAction func scissorsA(_ sender: UIButton) {
//        AppDelegate.model.choosePlayer2(pick: .Scissor)
//        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
//    }
//
//    @IBAction func RockA(_ sender: UIButton) {
//        AppDelegate.model.choosePlayer2(pick: .Rock)
//        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
//    }
//
//    @IBAction func PaperA(_ sender: UIButton) {
//        AppDelegate.model.choosePlayer2(pick: .Paper)
//        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
//    }
    @IBAction func PaperA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick: .Paper)
        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
    }
    
    @IBAction func lb(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick: .Lizzard)
        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
    }
    
    @IBAction func rbA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick: .Rock)
        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
    }
    @IBAction func SPBA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick: .Spock)
        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
    }
   
    @IBAction func ScissorsA(_ sender: UIButton) {
        AppDelegate.model.choosePlayer2(pick: .Scissor)
        msg.text = "You have selected \(AppDelegate.model.player2)!, change if you want."
    }
    
    
}

