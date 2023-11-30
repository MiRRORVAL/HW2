//
//  ViewController.swift
//  HW2
//
//  Created by Nur on 29.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redFlag: UIView!
    @IBOutlet var yellowFlag: UIView!
    @IBOutlet var greenFlag: UIView!
    @IBOutlet var startButton: UIButton!
    var counter = 1
    var dimmedColor = 0.3
    var normalColor = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.cornerRadius = 60
        redFlag.layer.cornerRadius = 60
        yellowFlag.layer.cornerRadius = 60
        greenFlag.layer.cornerRadius = 60
        
        redFlag.alpha = dimmedColor
        yellowFlag.alpha = dimmedColor
        greenFlag.alpha = dimmedColor
    }
    @IBAction func startButtonIsPressed() {
        startButton.setTitle("Blink!", for: .normal)
        redFlag.alpha = dimmedColor
        yellowFlag.alpha = dimmedColor
        greenFlag.alpha = dimmedColor
        switch counter {
        case 1:  redFlag.alpha = normalColor
            counter += 1
        case 2: yellowFlag.alpha = normalColor
            counter += 1
        case 3: greenFlag.alpha = normalColor
            counter = 1
        default:
            print("error")
        }
    }
}
