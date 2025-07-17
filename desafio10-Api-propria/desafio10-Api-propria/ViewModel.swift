//
//  ViewModel.swift
//  desafio10-Api-propria
//
//  Created by Turma02-15 on 16/07/25.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var musicas: [musica] = []
    
    func fetch() {
        guard let url = URL(string: "http://127.0.0.1:1880/leituraMusica") else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {[weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode([musica].self, from: data)
                
                DispatchQueue.main.async {
                    self?.musicas = parsed
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
 
