//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Oluwakamiye Akindele on 19/11/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    
    var bmiValue : String?
    var color : UIColor?
    var advice : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bmiLabel.text = bmiValue
        bgImage.backgroundColor = color
        commentLabel.text = advice
    }
    
    @IBAction func recalculateBtn(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
