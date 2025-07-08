//
//  module3.swift
//  desafio6
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct module3: View {
    var body: some View {
        ZStack () {
            Color.gray.ignoresSafeArea(.all, edges: .bottom)
            
            VStack() {
                Text("Street View").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                Spacer()
                VStack {
                    Text("Nome: Thiago").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                    Text("Sobrenome: Pereira").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                }.padding().background(Color.pink).cornerRadius(10)
                Spacer()
            }
        }
    }
}

#Preview {
    module3()
}
