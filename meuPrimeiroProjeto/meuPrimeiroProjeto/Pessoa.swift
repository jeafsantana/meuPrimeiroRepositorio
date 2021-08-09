//
//  Pessoa.swift
//  meuPrimeiroProjeto
//
//  Created by Jessica Arruda Ferreira de Santana on 09/08/21.
//

import Foundation

class Pessoa {
    
    var nome: String
    var cpf: String
    var telefone: String
    var email: String
    
    init(nome: String, cpf: String, telefone: String, email: String) {
        self.nome = nome
        self.cpf = cpf
        self.telefone = telefone
        self.email = email
    }
    
    func imprimeDados(){
        print("Nome: \(nome)")
        print("CPF: \(cpf)")
        print("Telefone: \(telefone)")
        print("E-mail: \(email)")
    }
    
}
