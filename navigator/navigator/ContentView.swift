//
//  ContentView.swift
//  navigator
//
//  Created by Marcin Klisz on 16/04/2022.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var selection = 0
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            UserView()
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("User")
                }
            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
        .accentColor(colorScheme == .dark ? Color.white : Color.black)
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
