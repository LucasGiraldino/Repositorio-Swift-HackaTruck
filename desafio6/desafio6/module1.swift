//
//  module1.swift
//  desafio6
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct module1: View {
    var body: some View {
        ZStack() {
            Color.gray.ignoresSafeArea(.all)
            
            VStack() {
                Text("Modulo 1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Text("Bem Vindo ao Modulo 1")
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity ,alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
    }
}

#Preview {
    module1()
}
