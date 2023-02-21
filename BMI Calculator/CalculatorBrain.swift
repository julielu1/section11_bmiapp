//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Julie Lu on 17/2/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmi1d = String(format: "%.1f", bmi?.value ?? 0.01)
        return bmi1d
    }
    func getAdvice() -> String {
        return bmi?.advice ?? "Other"
    }
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        let advice: String
        switch bmiValue {
        case ...18.5:
                advice = "Eat more pies!"
            bmi = BMI(value: bmiValue, advice: advice, color: UIColor.red)
        case 24.9...:
                advice = "Eat less pies!"
            bmi = BMI(value: bmiValue, advice: advice, color: UIColor.blue)
        case 18.5...24.9:
                advice = "Fit as a fiddle!"
            bmi = BMI(value: bmiValue, advice: advice, color: UIColor.green)
        default:
            advice = "Other"
        }
    }
}
