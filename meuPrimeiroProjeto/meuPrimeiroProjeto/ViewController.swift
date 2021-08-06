//
//  ViewController.swift
//  meuPrimeiroProjeto
//
//  Created by Jessica Arruda Ferreira de Santana on 04/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cpfTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func isValidCPF() -> Bool {
        if cpfTextField.text == "" {
            return false
        }
        
        if cpfTextField.text?.count != 11 {
            return false
        }
        
        let numericCPF = Int(cpfTextField.text!)
        
        if numericCPF == nil {
            return false
        }
        
        return true
    }
    
    
    @IBAction func okButtonAction(_ sender: Any) {
        
        if !isValidCPF() {
            cpfTextField.layer.borderWidth = 1
            cpfTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            cpfTextField.layer.borderWidth = 1
            cpfTextField.layer.borderColor = UIColor.clear.cgColor
        }
    }

}

