//
//  ContentView.swift
//  desafio6
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showingSheet = false
    var body: some View {
        NavigationStack() {
            ZStack() {
                Color.gray.ignoresSafeArea(.all)
                
                VStack () {
                    Image("hacka")
                        .resizable()
                        .frame(width:250, height: 200)
                        .padding(.bottom, 20)
                    
                    
                    NavigationLink(destination: module1()) {
                        Text("Modulo 1")
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                            
                    }
                    NavigationLink(destination: module2()) {
                        Text("Modulo 2")
                            .padding()
                            .background(Color.pink)
                            .foregroundColor(.white)
                    }
                    Button("Modulo 3") {
                        showingSheet = true
                    }
                    .sheet(isPresented: $showingSheet) {
                        module3()
                    }.padding()
                        .background(Color.pink)
                        .foregroundColor(.white)
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)

            }
        }

    }
}

#Preview {
    ContentView()
}
