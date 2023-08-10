//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ragava Krishnan N S on 07/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain  {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0 )
        return bmiToOneDecimalPlace
    }
    
    func getAdvice() -> String {
        let bmiAdvice = bmi?.advice
        return bmiAdvice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        let bmiColor = bmi?.color
        return bmiColor ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pizzas and burgers!", color: UIColor.blue)
        }
        else if bmiValue < 24.9{
                bmi = BMI(value: bmiValue, advice: "You are healthy, try to stay the same!", color: UIColor.green )
        }
        else {
            bmi = BMI(value: bmiValue, advice: "Eat fewer pizzas and burgers!", color: UIColor.red )
        }
    }
    
}
