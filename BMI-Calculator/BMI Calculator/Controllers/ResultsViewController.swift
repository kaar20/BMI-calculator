//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Mohamed Abdiaziz  on 28/04/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmi : Float = 0
    var advice : String?
    var color : UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        bmiValue.text=String(format: "%.1f",bmi)
        advices.text=advice
        view.backgroundColor=color
        
    }
    
    
    @IBOutlet weak var colors: UIColor!
    
    @IBOutlet weak var bmiValue: UILabel!
    
    @IBOutlet weak var advices: UILabel!
    @IBAction func back(_ sender: UIButton) {
        self.dismiss(animated: true,completion: nil)
    }
    
}
