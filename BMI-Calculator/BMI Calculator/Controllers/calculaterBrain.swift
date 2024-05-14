//
//  calculaterBrain.swift
//  BMI Calculator
//
//  Created by Mohamed Abdiaziz  on 30/04/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    var bmi:BMI?
    
    
   mutating  func calculateBMI(height:Float,weight:Float){
        
//        getBMIValue(bmi: weight/pow(height, 2))
       let bmiValue=weight/pow(height, 2)
//       print(bmiValue)
//       print(bmiValue)
         if(bmiValue<18.5){
//             print("UnderWeight")
             bmi=BMI(value: bmiValue, advice: "Eat More pies!", color: .blue)

         }
         else if(bmiValue<24.9){
             bmi=BMI(value: bmiValue, advice: "Fit as a Fiddle!", color: .green)

//             print("Normal Weight")
         }
         else{
             bmi=BMI(value: bmiValue, advice: "Eat Less pies!", color: .red)

             print("OverWeight")
         }
    }
//    
    mutating func getBMIValue()->Float
    {
        return bmi?.value ??  0.0
    }
    func getAdvice()->String{
        return bmi?.advice ?? "No Advice"
        
    }
    
    func getColor()->UIColor{
        return bmi?.color ?? .white
        
        
        
    }
    
    
}
