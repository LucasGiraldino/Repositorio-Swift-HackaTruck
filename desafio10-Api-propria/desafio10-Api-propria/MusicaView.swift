//
//  MusicaView.swift
//  desafio10-Api-propria
//
//  Created by Turma02-15 on 16/07/25.
//

import SwiftUI

struct MusicaView: View {
    @State var escolhida: musica = musica(rev:"", autor: "", nome: "", imagem: "", tempo: "")
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.green, Color.black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            VStack {
                AsyncImage(url: URL(string: escolhida.imagem!)) { image in
                    image.resizable()
                        .clipShape(Rectangle())
                        .frame(width: 250, height: 250)
                } placeholder: {
                    ProgressView()
                        .frame(width: 250, height: 250)
                }.padding()
                HStack {
                    Text(escolhida.nome!).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).padding()
                    Text(escolhida.tempo!).font(.system(size: 20)).foregroundStyle(Color.white)
                }
                HStack() {
                   Image(systemName: "shuffle")
                       .resizable()
                       .frame(width: 40, height: 40)
                       .foregroundColor(.white)
                   Spacer()
                   Image(systemName: "backward.end.fill")
                       .resizable()
                       .frame(width: 40, height: 40)
                       .foregroundColor(.white)
                   Spacer()
                   Image(systemName: "play.fill")
                       .resizable()
                       .frame(width: 40, height: 40)
                       .foregroundColor(.white)
                   Spacer()
                   Image(systemName: "forward.end.fill")
                       .resizable()
                       .frame(width: 40, height: 40)
                       .foregroundColor(.white)
                   Spacer()
                   Image(systemName: "repeat")
                       .resizable()
                       .frame(width: 40, height: 40)
                       .foregroundColor(.white)
                           
                       }.padding()
            }.padding()
        }.tint(Color.white)
    }
}

#Preview {
    MusicaView()
}
