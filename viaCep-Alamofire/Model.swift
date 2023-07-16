//
//  Model.swift
//  viaCep-Alamofire
//
//  Created by villardeveloper on 09/07/23.
//

import Foundation

struct Cep: Codable {
    let cep: String?
    let logradouro: String?
    let localidade: String?
    let bairro: String?
}
