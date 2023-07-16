//
//  ViewController.swift
//  viaCep-Alamofire
//
//  Created by villardeveloper on 09/07/23.
//

import UIKit

class ViewController: UIViewController {
    
    let viewmodel = ViewModel()
    
    @IBOutlet weak var cepTextField: UITextField!
    @IBOutlet weak var logradouro: UILabel!
    @IBOutlet weak var localidade: UILabel!
    @IBOutlet weak var bairro: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func buscar(_ sender: Any) {
        viewmodel.fetchCep(cepTextField.text!) { (cep) in
                self.logradouro.text = cep.logradouro
                self.localidade.text = cep.localidade
                self.bairro.text = cep.bairro
        }
    }
}

