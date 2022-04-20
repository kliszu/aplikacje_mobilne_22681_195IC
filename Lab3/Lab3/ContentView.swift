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
                    Text("First View")
                }
            SecondView()
                .tabItem {
                    Image(systemName: "circle.grid.cross")
                    Text("Second View")
                }
            ThirdView()
                .tabItem {
                    Image(systemName: "house.circle")
                    Text("Third View")
                }
            FourthView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Fourth View")
                }
            FifthView()
                .tabItem {
                    Image(systemName: "person.3.sequence")
                    Text("Fifth View")
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
