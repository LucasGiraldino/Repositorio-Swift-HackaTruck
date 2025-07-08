//
//  music1.swift
//  desafio7
//
//  Created by Turma02-15 on 07/07/25.
//

import SwiftUI

struct music1: View {
    @State var escolhida: Song = Song(id: 0, name: "", artist: "", capa: "")
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [.blue, .black]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                AsyncImage(url: URL(string: escolhida.capa)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                } placeholder: {
                   ProgressView()
                }.frame(width: 300, height: 300)
                
                Text(escolhida.name).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).padding()
               

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
            }
        }
    }
}

#Preview {
    music1()
}
