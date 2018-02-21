//
//  ResultsViewController.swift
//  RPS-Dulam
//
//  Created by Dulam,Surya Chandra Phani Santhosh on 2/20/18.
//  Copyright © 2018 Dulam,Surya Chandra Phani Santhosh. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    
    @IBOutlet weak var p1: UILabel!
    
    @IBOutlet weak var p2: UILabel!
    @IBOutlet weak var sel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        sel.text = "Make selection in other two tabs"
//        p1.text = String (0)
//        p2.text = String (0)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if !AppDelegate.model.haveResult() {
            sel.text = "Make selection in other two tabs"
        }
        else {
            sel.text = AppDelegate.model.winner()
            p1.text = String (describing: AppDelegate.model.p1)
            p2.text = String (describing: AppDelegate.model.p2)
            
            
        }
    }

    
    @IBAction func ResultsA(_ sender: UIButton) {
        AppDelegate.model.reset()
        sel.text = "Make selection in other two tabs"
        p1.text = String (0)
        p2.text = String (0)
    }
    
    @IBAction func NewGameA(_ sender: Any) {
        AppDelegate.model.choosePlayer1(pick: .None)
        AppDelegate.model.choosePlayer2(pick: .None)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
