//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var heightValue : Float = 0.0
    var weightValue : Float = 0.0
    var BMI : Float = 0.0
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heightValue = sender.value
        heightLabel.text = String(format:"%.2fm", heightValue)
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightValue = sender.value
        weightLabel.text = String(format:"%.0fkg", weightValue)
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        //BMI = weightSlider.value/(pow(heightSlider.value,2))
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)
        
        performSegue(withIdentifier: "switchSegue", sender: self)
//        let secondVC = SecondViewController()
//        present(secondVC, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "switchSegue"{
            let destination = segue.destination as! ResultViewController
            destination.bmiValue = calculatorBrain.getBMIValue(precision : 1)
            destination.advice = calculatorBrain.getBMI().advice
            destination.color = calculatorBrain.getBMI().color
        }
    }
}
