//
//  pinkView.swift
//  desafio5
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct pinkView: View {
    var body: some View {
        ZStack {
            Color.pink.ignoresSafeArea(.all, edges: .top)
            
            Image(systemName: "paintbrush")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.pink)
                .padding()
                .background(Color.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    pinkView()
}
