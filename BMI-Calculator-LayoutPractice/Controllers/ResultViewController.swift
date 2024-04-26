//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by 이가을 on 4/26/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviseLabel: UILabel!
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviseLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculateButtonTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
