//
//  ViewController.swift
//  DiceRoll
//
//  Created by  on 10/28/20.
//  Copyright © 2020 HobbesApps. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var die: UILabel!
    @IBOutlet weak var die2: UILabel!
    @IBOutlet weak var sum: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    @IBAction func myButton(_ sender: UIButton)
    {
        let randomInt = Int.random(in: 1...6)
        if randomInt == 1
        {
            die.text = "1"
        }
        else if randomInt == 2
        {
            die.text = "2"
        }
        else if randomInt == 3
        {
            die.text = "3"
        }
        else if randomInt == 4
        {
            die.text = "4"
        }
        else if randomInt == 5
        {
            die.text = "5"
        }
        else if randomInt == 6
        {
            die.text = "6"
        }
        let randomInt2 = Int.random(in: 1...6)
        
        if randomInt2 == 1
        {
            die2.text = "1"
        }
        else if randomInt2 == 2
        {
            die2.text = "2"
        }
        else if randomInt2 == 3
        {
            die2.text = "3"
        }
        else if randomInt2 == 4
        {
            die2.text = "4"
        }
        else if randomInt2 == 5
        {
            die2.text = "5"
        }
        else if randomInt2 == 6
        {
            die2.text = "6"
        }
        let num = die.text ?? "0"
        let num1 = Int(num) ?? 0
        
        let Num = die2.text ?? "0"
        let num2 = Int(Num) ?? 0
        
        let result = num1 + num2
        sum.text = String(result)
        
    }
    
    
}

