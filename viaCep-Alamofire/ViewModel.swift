//
//  ViewModel.swift
//  viaCep-Alamofire
//
//  Created by villardeveloper on 09/07/23.
//

import Foundation
import Alamofire

class ViewModel {
    
    func fetchCep(_ cep: String, completion: @escaping (Cep) -> Void) {
    
        let url = "https://viacep.com.br/ws/\(cep)/json/"
        
        AF.request(url).validate()
            .responseDecodable(of: Cep.self) { response in
                guard let adress = response.value else {return}
                completion(adress)
        }
    }
}
