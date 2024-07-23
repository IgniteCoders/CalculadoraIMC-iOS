//
//  ViewController.swift
//  CalculadoraIMC-iOS
//
//  Created by Mañanas on 22/7/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    var height: Int = 160
    var weight: Float = 70
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func onHeightChanged(_ sender: UIStepper) {
        height = Int(sender.value)
        heightLabel.text = "\(height) cm"
    }
    
    @IBAction func onWeightChanged(_ sender: UISlider) {
        weight = sender.value
        weightLabel.text = "\(weight) kg"
    }
    
    @IBAction func calculate(_ sender: Any) {
        print("Altura: \(height)")
        print("Peso: \(weight)")
    }
}

