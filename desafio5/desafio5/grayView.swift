//
//  grayView.swift
//  desafio5
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct grayView: View {
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea(.all, edges: .top)
            
            Image(systemName: "paintpalette")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(Color.gray)
                .padding()
                .background(Color.black)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    grayView()
}
