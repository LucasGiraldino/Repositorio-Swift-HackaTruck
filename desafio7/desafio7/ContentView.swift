//
//  ContentView.swift
//  desafio7
//
//  Created by Turma02-15 on 07/07/25.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [.blue, .black]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
                
                VStack () {
                    Image("hacka-imagem").resizable().frame(width: 300, height: 300)
                     
                    Text("Hacka FM")
                        .font(.title)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                    Spacer()
                    HStack {
                        Image("hacka-imagem").resizable().frame(width: 30, height: 30)

                        Text("HackaSong").foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    
                   Spacer()
                    
                    ScrollView {
                        ForEach(Musicas) { musica in
                            VStack(alignment: .leading){
                                HStack {
                                    NavigationLink (destination: music1(escolhida: musica)) {
                                        AsyncImage(url: URL(string: musica.capa)) { image in
                                            image
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                        } placeholder: {
                                           ProgressView()
                                        }.frame(width: 50, height: 50)
                                        
                                        VStack (alignment:.leading) {
                                            Text(musica.name).foregroundColor(.white).padding(5)
                                                
                                            
                                            Text(musica.artist).foregroundColor(.white)
                                        }
                                        Spacer()
                                        
                                        Text("...").foregroundColor(.white)
                                        
                                    }

                                    Spacer()
                                }

                                
                               
                            }
                        }
                    }

                    
                }.padding()
                
                
                
            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity) // Ocupa toda a tela
//            .ignoresSafeArea(.all)
            
        }.tint(.white)

    }
}

#Preview {
    ContentView()
}
