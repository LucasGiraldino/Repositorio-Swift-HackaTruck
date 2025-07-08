//
//  blueView.swift
//  desafio5
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct blueView: View {
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea(.all, edges: .top)
            
            Image(systemName: "paintbrush.pointed")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.blue)
                .padding()
                .background(Color.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    blueView()
}
