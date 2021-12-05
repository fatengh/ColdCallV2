//
//  ViewController.swift
//  ColdCallV2
//
//  Created by admin on 05/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameLebel: UILabel!
    
    @IBOutlet weak var numberLebel: UILabel!
    //array of names
    let names  = ["Faten","Manar","Fadia","Rawya","Ruba"]

    //array of numbers
    

    @IBAction func coldCallPress(_ sender: UIButton) {
        //change lebel by random index of array
        nameLebel.text = names[Int.random(in: 0..<5)]
        //choose numbers from 1 to 5
        let x = Int.random(in: 1..<6)
        // show the lebel
        numberLebel.isHidden = false
        numberLebel.text = "\(x)"
        // change the color
        switch x {
                case 1...2:
                    numberLebel.textColor = UIColor.systemRed
                case 3...4:
                    numberLebel.textColor = UIColor.systemOrange
                default:
                    numberLebel.textColor = UIColor.systemGreen
                }    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

