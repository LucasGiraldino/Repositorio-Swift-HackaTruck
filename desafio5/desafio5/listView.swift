//
//  listView.swift
//  desafio5
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct listView: View {
    var body: some View {
        ZStack() {
            Color.gray.ignoresSafeArea(.all, edges: .top)
            
            VStack() {
                Text("List")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                HStack() {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush")
                }.padding().background().cornerRadius(10)
                
                HStack() {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintbrush.pointed")
                }.padding().background().cornerRadius(10)
                
                HStack() {
                    Text("Item")
                    Spacer()
                    Image(systemName: "paintpalette")
                }.padding().background().cornerRadius(10)

            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
        }
    }
        
}

#Preview {
    listView()
}
