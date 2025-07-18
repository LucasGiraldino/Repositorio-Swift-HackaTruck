//
//  APIKey.swift
//  desafio11-intrgrandoIA
//
//  Created by Turma02-15 on 17/07/25.
//

import Foundation

enum APIKey {
    
    static var `default` : String {
        guard let filePath = Bundle.main.path(forResource: "GenerateIA-Info", ofType: "plist")
        else {
            fatalError("Couldn't find file 'GenerateIA-Info.plist'.")
        }
        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "API_KEY") as? String else {
            fatalError("Couldn't find file 'GenerateIA-Info.plist'.")
        }
        if value.starts(with: "_") {
            fatalError("Couldn't find file 'GenerateIA-Info.plist'.")
        }
        return value
    }
}
