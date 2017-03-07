//
//  ViewController.swift
//  sc14abh_newCalculator
//
//  Created by sc14abh on 06/03/2017.
//  Copyright © 2017 sc14abh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Tags
    @IBOutlet weak var Question: UILabel!
    @IBOutlet weak var answer: UILabel!
    @IBOutlet weak var wellDone: UILabel!
    
    //Variables
    var ans = 0
    var RNG1 = Int(arc4random_uniform(5))
    var RNG2 = Int(arc4random_uniform(5))
    var sum = 0
    var send = ""
    
    //Buttons
    @IBAction func button(sender: AnyObject) {
        ans = sender.tag
        if ans == sum{
            wellDone.text = "Well Done!"
        }
        else {
            wellDone.text = "Wrong!"
        }
    }
    
    //Sums + Background Colour
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.cyanColor()
        
        sum = RNG1 + RNG2
        Question.text = String(RNG1) + " + " + String(RNG2) + "= "
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

