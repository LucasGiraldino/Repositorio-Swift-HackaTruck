//
//  pag2Module2.swift
//  desafio6
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct pag2Module2: View {
    @State var name: String = ""
    var body: some View {
        ZStack() {
            Color.gray.ignoresSafeArea(.all)
            
            VStack() {
                Text("Volte, ").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white) +
                Text("\(name)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
            }.padding().background(Color.pink).cornerRadius(10)
        }
        
    }
}

#Preview {
    pag2Module2()
}
