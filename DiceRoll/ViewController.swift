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
        
        if result == 7
        {
            view.backgroundColor = UIColor.green
            let alert = UIAlertController(title: "You Won!", message: "Congratulations on winning the game!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Thank You!", style: .default, handler: nil))

            self.present(alert, animated: true)
        }
        else if result == 11
        {
            view.backgroundColor = UIColor.green
            let alert2 = UIAlertController(title: "You Won!", message: "Congratulations on winning the game!", preferredStyle: .alert)
            alert2.addAction(UIAlertAction(title: "Thank You!", style: .default, handler: nil))
            self.present(alert2, animated: true)
        }
            
        else if result == 2
        {
            view.backgroundColor = UIColor.red
            let alert3 = UIAlertController(title: "You Lost!", message: "Congratulations on lsoign the game!", preferredStyle: .alert)
            alert3.addAction(UIAlertAction(title: "Try Again!", style: .default, handler: nil))
            self.present(alert3, animated: true)
        }
        else if result == 3
        {
            view.backgroundColor = UIColor.red
            let alert4 = UIAlertController(title: "You Lost!", message: "Congratulations on losing the game!", preferredStyle: .alert)
            alert4.addAction(UIAlertAction(title: "Try Again!", style: .default, handler: nil))
            self.present(alert4, animated: true)
        }
        else if result == 12
        {
            view.backgroundColor = UIColor.red
            let alert5 = UIAlertController(title: "You Lost!", message: "Congratulations on losing the game!", preferredStyle: .alert)
            alert5.addAction(UIAlertAction(title: "Try Again!", style: .default, handler: nil))
            self.present(alert5, animated: true)
        }
        else
        {
            view.backgroundColor = UIColor.white
        }
        sum.text = String(result)
    }
    
    
}

