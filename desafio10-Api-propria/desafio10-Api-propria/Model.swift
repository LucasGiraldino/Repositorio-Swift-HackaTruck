//
//  Model.swift
//  desafio10-Api-propria
//
//  Created by Turma02-15 on 16/07/25.
//

import Foundation


struct musica: Codable, Hashable {
    let rev: String?
    let autor: String?
    let nome: String?
    let imagem: String?
    let tempo: String?
}


