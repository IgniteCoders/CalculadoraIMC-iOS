//
//  ViewController.swift
//  CalculadoraIMC-iOS
//
//  Created by Mañanas on 22/7/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "navigateToSecondView") {
            let viewController = segue.destination as! SecondViewController
            
            viewController.name = nameTextField.text!
        }
    }
    
}

