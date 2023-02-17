//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var heightValue: UILabel!
    @IBOutlet weak var weightValue: UILabel!
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let heightNumber = String(format: "%.2f", sender.value)
        heightValue.text = (heightNumber + "m")
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let weightNumber = String(format: "%.0f", sender.value)
        weightValue.text = (weightNumber + "kg")
    }
    
    @IBOutlet weak var heightSliderValue: UISlider!
    @IBOutlet weak var weightSliderValue: UISlider!
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let weight = weightSliderValue.value
        let height = heightSliderValue.value
        
        let bmi1 = calculatorBrain.calculateBMI(height: height, weight: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
        }
    }
}

