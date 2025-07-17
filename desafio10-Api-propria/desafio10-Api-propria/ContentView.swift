//
//  ContentView.swift
//  desafio10-Api-propria
//
//  Created by Turma02-15 on 16/07/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ViewModel()
    var body: some View {
        NavigationStack {
            ZStack {
                    LinearGradient(
                        gradient: Gradient(colors: [Color.green, Color.black]),
                        startPoint: .top,
                        endPoint: .bottom
                )
                .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    VStack {
                        Image("Spotify_icon")
                        
                        Spacer()
                        
                        
                        ForEach(viewModel.musicas, id:\.self) { item in
                            VStack(alignment: .leading) {
                                HStack {
                                    NavigationLink (destination: MusicaView(escolhida: item)){
                                        AsyncImage(url: URL(string: item.imagem!)) { image in
                                            image.resizable()
                                                .clipShape(Circle())
                                                .frame(width: 50, height: 50)
                                        } placeholder: {
                                            ProgressView()
                                                .frame(width: 50, height: 50)
                                        }
                                        VStack {
                                            Text(item.nome!)
                                                .font(.system(size: 20))
                                                .foregroundStyle(Color.white)
                                            Text(item.autor!)
                                                .font(.system(size: 10))
                                                .foregroundStyle(Color.white)
                                            
                                        }
                                        Spacer()
                                        Text(item.tempo!)
                                            .font(.system(size: 20))
                                            .foregroundStyle(Color.white)
                 
                                    }
                                }
                                .padding()
                                .background(.black)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.gray, lineWidth: 2)
                                )

                            }.padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                        }
                    
                    }.padding(20)
                    
                }

            }
        }.onAppear() {
            viewModel.fetch()
        }
    }
}

#Preview {
    ContentView()
}
