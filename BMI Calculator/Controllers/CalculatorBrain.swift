//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Oluwakamiye Akindele on 19/11/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmiValue : Float = 0.0
    private var bmi : BMI?
    
    mutating func calculateBMI(height : Float, weight: Float){
        bmiValue = weight / pow(height, 2)
        var advice = ""
        var color : UIColor
        if bmiValue < Float(18.50){
            advice = "Eat some Pies!"
            color = #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)
        }else if bmiValue < Float(24.90){
            advice = "Fit as a Fiddle!"
            color = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
        }else{
            advice = "Please Don't eat any more Pies!"
            color = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        }
        bmi = BMI(bmiValue: bmiValue, advice: advice, color: color)
    }
    
    func getBMIValue() -> String{
        return getBMIValue(precision : 1)
    }
    
    func getBMIValue(precision : Int) -> String{
        return String(format: "%.\(precision)f", bmi!.bmiValue ?? 0.0)
    }
    
    func getBMI() -> BMI{
        return bmi ?? BMI(bmiValue: bmiValue, advice: "Error Occurred", color: UIColor.gray)
    }
}
