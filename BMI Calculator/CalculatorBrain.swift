//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Julie Lu on 17/2/2023.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    var bmiValue = "0.0"
    
    mutating func calculateBMI(height: Float, weight: Float) -> String {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.1f", bmi)
        return bmiValue
    }
    func getBMIValue() -> String {
        return bmiValue
    }
}
