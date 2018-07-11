//
//  ViewController.swift
//  Dicee
//
//  Created by Hardik Shah on 7/10/18.
//  Copyright © 2018 Hardik Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceIndex1: Int = 0;
    var randomDiceIndex2: Int = 0;
    
    let diceArray: [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"];
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceFaces();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceFaces();
    }
    
    func updateDiceFaces(){
        randomDiceIndex1 = (Int)(arc4random_uniform(6));
        randomDiceIndex2 = (Int)(arc4random_uniform(6));
        
        diceImageView1.image = UIImage(named:diceArray[randomDiceIndex1]);
        diceImageView2.image = UIImage(named:diceArray[randomDiceIndex2]);
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceFaces();
    }
    
}

