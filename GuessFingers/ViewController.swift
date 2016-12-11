//
//  ViewController.swift
//  GuessFingers
//
//  Created by Dave Schumaker on 12/10/16.
//  Copyright © 2016 Schumaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userGuess: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    @IBAction func guessNumber(_ sender: UIButton) {
        let randomNumber = Int(arc4random_uniform(6))
        let userNumber:Int? = Int(userGuess.text!)
        
        if (userNumber == randomNumber) {
            statusLabel.text = "Correct! The correct number was \(randomNumber)"
        } else {
            statusLabel.text = "Wrong, I was showing \(randomNumber) fingers"
        }
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

