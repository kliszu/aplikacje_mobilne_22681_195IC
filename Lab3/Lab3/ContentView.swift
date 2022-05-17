//
//  ContentView.swift
//  Lab3
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            FirstView()
                .tabItem {
                    Image(systemName: "list.bullet.circle")
                    Text("Number List")
                }
            SecondView()
                .tabItem {
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                    Text("Words List")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "chevron.forward.2")
                    Text("progression")
                }
        }
        .accentColor(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
