//
//  ViewController.swift
//  EnglishToFrench
//
//  Created by TIEGO Ouedraogo on 1/14/19.
//  Copyright © 2019 TIEGO Ouedraogo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var translator: [String: String] = [
        "good morning!":   "Bonjour",
        "how are you?":    "Comment vas tu?",
        "i am doing great": "Je vais très bien",
        "where are you from": "D'où viens tu",
        "i am from the U.S":   "Je viens des Etats Unis",
        "what is your name?":    "comment t'appels tu?",
        "my name is Mark" :       "je m'appel Mark",
        "one":    "Un",
        "two":    "Deux",
        "three":  "Trois",
        "four":   "Quatre",
        "five":   "Cinq",
        "six":    "Six",
        "seven":   "Sept",
        "eight":   "huit",
        "nine":    "neuf",
        "teen":     "dix",
        "zero":     "zéro"
    ];
    
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //print("tranlator.count = \(translator.count)")
        
        if let previousValue: String = translator.updateValue("Bonjour!", forKey: "Good morning!"){
            print("the old value waas \(previousValue)")
        }
        let i: Int? = 10
        
        if i == nil{
            print("can't apply")
        }else{
            let j: Int = i!;
            print(j)
        }
 
       //print(i == nil ? "can't apply exclamation point": "j =: \"\(i)");
        
        if i != nil{
            let j: Int = i!;
            
            print(j)
        }

        if let newvar : Int = i{
            print(newvar)
        }
        
        if let i: Int = i{
            print(i)
        }
    }

    @IBAction func returnPressed(_ sender: UITextField) {
        sender.resignFirstResponder()
        
        if let text: String = sender.text{
            if let frenchWord: String = translator[text.lowercased()]{
                
                label.text = "The French Word for: \"\(text) \" is \"\(frenchWord )\".";
            }
        }
    }
    
}


