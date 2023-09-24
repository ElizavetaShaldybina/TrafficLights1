//
//  ViewController.swift
//  TrafficLights1
//
//  Created by Елизавета Шалдыбина on 24.09.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstLight: UIView!
    @IBOutlet weak var secondLight: UIView!
    @IBOutlet weak var thirdLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstLight.alpha = 0.5
        secondLight.alpha = 0.5
        thirdLight.alpha = 0.5
        
        firstLight.layer.cornerRadius = 75
        secondLight.layer.cornerRadius = 75
        thirdLight.layer.cornerRadius = 75
        
        startButton.layer.cornerRadius = 10
        
        startButton.setTitle("START", for: .normal)
        
    }

    @IBAction func startButtonPressed() {
        
        if firstLight.alpha == 0.5 {
            startButton.setTitle("NEXT", for: .normal)
            firstLight.alpha = 1
        }
    }
    
    @IBAction func nextTwoButtonPressed() {
        if firstLight.alpha == 1 {
            startButton.setTitle("NEXT", for: .normal)
            secondLight.alpha = 1
            firstLight.alpha = 0.5
            thirdLight.alpha = 0.5
        }
    }
    
    @IBAction func nextThreeButtonPressed() {
        if secondLight.alpha == 1 {
            startButton.setTitle("NEXT", for: .normal)
            thirdLight.alpha = 1
            firstLight.alpha = 0.5
            secondLight.alpha = 0.5
        }
    }
    
}

