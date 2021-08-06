//
//  ViewController.swift
//  meuPrimeiroProjeto
//
//  Created by Jessica Arruda Ferreira de Santana on 04/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    func isValidName() -> Bool {
        if nameTextField.text == "" {
            return false
        }
        return true
    }
    
    
    @IBAction func okButtonAction(_ sender: Any) {
        
        if !isValidName() {
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor.clear.cgColor
        }
        
    }
    

}

