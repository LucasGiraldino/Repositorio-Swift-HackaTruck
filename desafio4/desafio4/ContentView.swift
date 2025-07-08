//
//  ContentView.swift
//  desafio4
//
//  Created by Turma02-15 on 03/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var distancia: Float = 0
    @State private var tempo: Float = 0
    @State private var resultado: Float = 0
    @State private var cor: String = "gray"
    @State private var imagem: String = "interrogacao"
    var body: some View {
        ZStack {
            Color("\(cor)")
                .edgesIgnoringSafeArea(.all)
            
            
            VStack (alignment: .center){
                
                VStack (alignment: .center) {
                    Text("Digite a ") +
                    Text("distancia ").bold() +
                    Text("(km): ")
                    
                    TextField("Distancia: ", value: $distancia, format: .number)
                        .keyboardType(.decimalPad)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        .textContentType(.oneTimeCode)
                        .padding()
                        .background(Color.black.opacity(0))
                        .cornerRadius(10)
                        .frame(width: 200)
                        .multilineTextAlignment(.center)
                }
                
                
                VStack (alignment: .center) {
                    Text("Digite o ") +
                    Text("tempo ").bold() +
                    Text ("(h): ")
                    
                    TextField("Tempo" ,value: $tempo, format: .number)
                        .keyboardType(.decimalPad)
                        .background(Color.white)
                        .cornerRadius(4.0)
                        .textContentType(.oneTimeCode)
                        .padding()
                        .background(Color.black.opacity(0))
                        .cornerRadius(10)
                        .frame(width: 200)
                        .multilineTextAlignment(.center)
                }
                
                
                    Button ("Calcular", action: {
                        resultado = distancia / tempo
                        
                        if resultado >= 0 && resultado <= 9.9 {
                            cor = "green"
                            imagem = "tartaruga"
                        } else if resultado >= 9.9 && resultado <= 29.9 {
                            cor = "blue"
                            imagem = "elefante"
                        } else if resultado > 29.9 && resultado <= 69.9 {
                            cor = "orange"
                            imagem = "avestruz"
                        } else if resultado > 69.9 && resultado <= 89.9 {
                            cor = "yellow"
                            imagem = "leao"
                        } else if resultado > 89.9 && resultado <= 130 {
                            cor = "red"
                            imagem = "gueopardo"
                        } else {
                            cor = "gray"
                            imagem = "interrogacao"
                        }
                        
                    }).padding(10).background(Color.black).cornerRadius(10).foregroundStyle(Color.yellow)
                
                Text("\(String(resultado)) km/h").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
                
                Image("\(imagem)")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())

                VStack{
                    HStack (){
                        Text("TARTARUGA").foregroundStyle(Color.white)
                        Spacer()
                        Text("(0 - 9.9km/h)").foregroundStyle(Color.white)
                        Spacer()
                        Color("green")
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                        
                    }
                    HStack (){
                        Text("ELEFANTE").foregroundStyle(Color.white)
                        Spacer()
                        Text("(10 - 29.9km/h)").foregroundStyle(Color.white)
                        Spacer()
                        Color("blue")
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                        
                    }
                    
                    HStack (){
                        Text("AVESTRUZ").foregroundStyle(Color.white)
                        Spacer()
                        Text("(30 - 69.9km/h)").foregroundStyle(Color.white)
                        Spacer()
                        Color("orange")
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                        
                    }
                    HStack (){
                        Text("LEÃO").foregroundStyle(Color.white)
                        Spacer()
                        Text("(70 - 89.9km/h)").foregroundStyle(Color.white)
                        Spacer()
                        Color("yellow")
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                        
                    }
                    HStack (){
                        Text("GUEOPARDO").foregroundStyle(Color.white)
                        Spacer()
                        Text("(90 - 130km/h)").foregroundStyle(Color.white)
                        Spacer()
                        Color("red")
                            .frame(width: 20, height: 20)
                            .clipShape(Circle())
                    }
                }.padding().background(Color.black).cornerRadius(10).padding(50)
    
                
            }
        }
    }
}

#Preview {
    ContentView()
}
