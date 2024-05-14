//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var calculaterBrain=CalculatorBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
   
   
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
   
    @IBAction func heightSlider(_ sender: UISlider) {
        heightLabel.text="\(String(round(100*sender.value)/100))m"
    }
    
  
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabell: UILabel!
    @IBAction func weightSlider(_ sender: UISlider) {
        weightLabell.text="\(String(round(100*sender.value)/100))Kg"
    }
//    var bmi : Float = 0
    
    @IBAction func calculateBtn(_ sender: UIButton) {
        let height=heightSlider.value
        let weight=weightSlider.value
        calculaterBrain.calculateBMI(height: height, weight: weight)
        self.performSegue(withIdentifier: "goToResult", sender:self)
        

        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinitionVC=segue.destination as! ResultsViewController
            destinitionVC.bmi = calculaterBrain.getBMIValue()
            destinitionVC.advice=calculaterBrain.getAdvice()
            destinitionVC.color=calculaterBrain.getColor()
            
            
        }

    }
    
}

