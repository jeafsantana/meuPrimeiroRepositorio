//
//  ViewController.swift
//  meuPrimeiroProjeto
//
//  Created by Jessica Arruda Ferreira de Santana on 04/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var telephoneTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func isValidTelephone() -> Bool {
        if telephoneTextField.text?.count == 9 || telephoneTextField.text?.count == 11 {
            return true
        }
        return false
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
    
    func isValidName() -> Bool {
        if nameTextField.text == "" {
            return false
        }
        return true
    }
    
    
    @IBAction func okButtonAction(_ sender: Any) {
        
        if let nome = nameTextField.text, let cpf = cpfTextField.text, let telefone = telephoneTextField.text, let email = emailTextField.text {
                        
            let pessoa = Pessoa(nome: nome, cpf: cpf, telefone: telefone, email: email)
            pessoa.imprimeDados()
        }
        
    }
    
    private func validaDados() {
        if !isValidCPF() {
            cpfTextField.layer.borderWidth = 1
            cpfTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            cpfTextField.layer.borderWidth = 1
            cpfTextField.layer.borderColor = UIColor.clear.cgColor
        }
        
        if !isValidName() {
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            nameTextField.layer.borderWidth = 1
            nameTextField.layer.borderColor = UIColor.clear.cgColor
        }
        
        if !isValidTelephone() {
            telephoneTextField.layer.borderWidth = 1
            telephoneTextField.layer.borderColor = UIColor.red.cgColor
        } else {
            telephoneTextField.layer.borderWidth = 1
            telephoneTextField.layer.borderColor = UIColor.clear.cgColor
        }
    }
}



