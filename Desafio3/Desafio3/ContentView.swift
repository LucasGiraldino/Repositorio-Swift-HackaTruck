//
//  ContentView.swift
//  Desafio3
//
//  Created by Turma02-15 on 02/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name : String = ""
    @State private var showAlert = false
    var body: some View {
        ZStack {
            Image("imagem1")
                .resizable()
                //.aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .blur(radius: 60)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Text("BemVindo, \(name)").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                TextField("Username", text: $name)
                    .padding()
                    .background(Color.white)
                    .multilineTextAlignment(.center)
                    .frame(width:300)
                Spacer()
                Image("logo-hackatruck")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200)
                Spacer()
                Button("Entrar") {
                    showAlert = true
                }
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("ALERTA !"),
                          message: Text("Voce ira iniciar o desafio da aula agora."),
                          dismissButton: .default(Text("Vamos la!")))
                }
            }
        }
       
    }
}

#Preview {
    ContentView()
}
