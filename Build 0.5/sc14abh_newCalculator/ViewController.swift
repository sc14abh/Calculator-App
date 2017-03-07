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
    @IBOutlet weak var congratsView: UIView!
    @IBOutlet weak var congratsAnswer: UILabel!
    @IBOutlet weak var congratsQuestion: UILabel!
    @IBAction func refreshVC(sender: AnyObject) {
        self.refreshView()
    }
    @IBOutlet weak var stars: UIView!
    
    //Variables
    var ans = 0
    var RNG1 = Int(arc4random_uniform(5))
    var RNG2 = Int(arc4random_uniform(5))
    var RNG3 = Int(arc4random_uniform(5))
    var RNG4 = Int(arc4random_uniform(5))
    var sum = 0
    var send = ""
    var newSum = 0
    
    //Buttons
    @IBAction func button(sender: AnyObject) {
        ans = sender.tag
        if ans == sum{
            congratsView.hidden = false
            UIView.animateWithDuration(0.5, delay: 0, options: [.Autoreverse, .Repeat], animations: {
                self.stars.alpha = 0
                }, completion: nil)
        }
        if ans == newSum {
            congratsView.hidden = false
            UIView.animateWithDuration(0.5, delay: 0, options: [.Autoreverse, .Repeat], animations: {
                self.stars.alpha = 0
                }, completion: nil)
        }
    }
    
    //Sums + Background Colour
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.cyanColor()
        
        congratsView.hidden = true
        
        sum = RNG1 + RNG2
        Question.text = String(RNG1) + " + " + String(RNG2) + "= "
        congratsQuestion.text = String(RNG1) + " + " + String(RNG2) + " = "
        congratsAnswer.text = String(sum)
        
        newSum = RNG3 + RNG4
        Question.text = String(RNG3) + " + " + String(RNG4) + " = "
        congratsQuestion.text = String(RNG3) + " + " + String(RNG4) + " ="
        congratsAnswer.text = String(newSum)
    }
    
    func refreshView() {
        self.viewDidLoad()
        RNG3 = Int(arc4random_uniform(5))
        RNG4 = Int(arc4random_uniform(5))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

