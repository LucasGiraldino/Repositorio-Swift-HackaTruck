//
//  module2.swift
//  desafio6
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct module2: View {
    @State private var name: String = ""
    var body: some View {
        NavigationStack() {
            ZStack() {
                Color.gray.ignoresSafeArea(.all)
                
                VStack() {
                    Text("Modulo 2")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                    VStack {
                        Text("Bem Vindo, \(name)")
                            .padding()
                            .foregroundColor(.white)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        TextField("Nome", text: $name)
                            .padding()
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                        
                        NavigationLink(destination: pag2Module2(name: name)) {
                            Text("Acessa Tela")
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                        }
                    }.padding().background(Color.pink).cornerRadius(10)

                    Spacer()
                }
                .padding()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            }
        }
    }
}

#Preview {
    module2()
}
