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
    
    @IBOutlet var heightStepper: UIStepper!
    @IBOutlet var weightSlider: UISlider!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var height: Int = 160
    var weight: Float = 70
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        heightStepper.value = Double(height)
        weightSlider.value = weight
        
        onHeightChanged(heightStepper)
        onWeightChanged(weightSlider)
    }
    
    @IBAction func onHeightChanged(_ sender: UIStepper) {
        height = Int(sender.value)
        heightLabel.text = "\(height) cm"
    }
    
    @IBAction func onWeightChanged(_ sender: UISlider) {
        weight = sender.value
        let formatedWeight = String(format: "%.2f", weight)
        weightLabel.text = "\(formatedWeight) kg"
    }
    
    @IBAction func calculate(_ sender: Any) {
        // Calculo el IMC
        let imc = Double(weight)/pow(Double(height)/100.0, 2)
        let formatedIMC = String(format: "%.2f", imc)
        
        // Calculo el color y la descripcion
        var descriptionText: String
        var descriptionColor: UIColor
        
        switch imc {
        case 0..<18.5:
            descriptionText = "Bajo peso"
            descriptionColor = UIColor(named: "under_weight")!
        case 18.5..<25:
            descriptionText = "Peso normal"
            descriptionColor = UIColor(named: "normal_weight")!
        case 25..<30:
            descriptionText = "Sobrepeso"
            descriptionColor = UIColor(named: "over_weight")!
        default:
            descriptionText = "Obesidad"
            descriptionColor = UIColor(named: "obesity_weight")!
        }
        
        // Muestro el resultado
        resultLabel.text = "\(formatedIMC)"
        descriptionLabel.text = descriptionText
        resultLabel.textColor = descriptionColor
        descriptionLabel.textColor = descriptionColor
    }
}

