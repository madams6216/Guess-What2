//
//  ViewController.swift
//  Guess What2
//
//  Created by michael adams on 11/9/15.
//  Copyright © 2015 michael adams. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    var question: Int = 2
    
    @IBAction func nextButtonPressed(sender: AnyObject) {
        
        if question == 1{
            
            questionLabel.text = "Think of a number"
            answerTextField.text = ""
            answerTextField.hidden = true
            sender.setTitle("Next" , forState: UIControlState.Normal)
            
        
        } else if question == 2{
            
            questionLabel.text = "Multiply it with 5"
        
        } else if question == 3{
            
            questionLabel.text = "Now add 5 to the total"
            
        } else if question == 4{
            
            questionLabel.text = "Multiply the answer by 2"
            
        } else if question == 5{
            
            questionLabel.text = "Now add 2 to the total"
            
        } else if question == 6{
            
            questionLabel.text = " What is the Total"
            
            answerTextField.hidden = false
        
        
            
        
        } else if question == 7{
            
            if answerTextField.text != "" {
                
                let input: Int = Int(answerTextField.text!)!
                let answer = ((((input - 2) / 2) - 5) / 5)
                questionLabel.text = "You thought of : \(answer)"
                sender.setTitle("Play", forState: UIControlState.Normal)
                
            } else {
                
                let alert = UIAlertController(title: "Ooops", message: "Please provide total", preferredStyle: .Alert)
                  alert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
                
                self.presentViewController(alert, animated: true, completion: nil)
            
                
                
            }
            
            self.view.endEditing(true)
        }
        
        question++
        
        if question > 7 {
            question = 1
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
        
        answerTextField.text = ""
        answerTextField.hidden = true
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    
}

    



