//
//  ContentView.swift
//  desafio5
//
//  Created by Turma02-15 on 04/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            pinkView()
                .tabItem {
                    Label("Rosa", systemImage: "paintbrush")
                }
            blueView()
                .tabItem {
                    Label("Azul", systemImage: "paintbrush.pointed")
                }
            grayView()
                .tabItem {
                    Label("Cinza", systemImage: "paintpalette")
                }
            listView()
                .tabItem {
                    Label("Lista", systemImage: "list.bullet")
                }
        }
    }
}

#Preview {
    ContentView()
}
