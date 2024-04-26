//
//  CalculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 이가을 on 4/26/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / (height * height)
        
        switch bmiValue {
        case ..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .cyan)
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .orange)
        default:
            bmi = BMI(value: bmiValue, advice: "error", color: .orange)
        }
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .orange
    }
}
