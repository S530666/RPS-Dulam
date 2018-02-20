//
//  FirstViewController.swift
//  RPS-Dulam
//
//  Created by Dulam,Surya Chandra Phani Santhosh on 2/20/18.
//  Copyright © 2018 Dulam,Surya Chandra Phani Santhosh. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var player1tab: UITabBarItem!
    @IBOutlet weak var player1: UITextField!
    @IBAction func player1type(_ sender: UITextField) {
        player1tab.title = player1.text!
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

