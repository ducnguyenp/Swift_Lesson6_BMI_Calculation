
import Foundation
import UIKit

struct CalculaterBrain {
    var bmiValue: BMI?
    
    func getBodyStatus(bmiValue: Float) -> String {
        switch bmiValue {
        case 0 ... 18.5:
            return "Uderweight"
        case 18.5 ... 24.9:
            return "Normal"
        default:
            return "Overweight"
        }
    }
    
    func getBMIColor(bmiValue: Float) -> UIColor {
        switch bmiValue {
        case 0 ... 18.5:
            return UIColor.systemPink
        case 18.5 ... 24.9:
            return UIColor.systemGreen
        default:
            return UIColor.systemBlue
        }
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let value = weight / pow(height, 2)
        bmiValue = BMI(value: value, advice: getBodyStatus(bmiValue: value), color: getBMIColor(bmiValue: value))
    }
    
    func getBMIValue() -> String {
        return String(format: "%.2f", bmiValue?.value ?? 0.0)
    }
}
