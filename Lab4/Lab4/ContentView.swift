//
//  ContentView.swift
//  Lab4
//
//  Created by Marcin Klisz on 17/05/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstView()
                .tabItem{
                    Text("Text input")
                    Image(systemName: "text.viewfinder")
                }
            SecondView()
                .tabItem{
                    Text("Text input")
                    Image(systemName: "text.viewfinder")
                }
            ThirdView()
                .tabItem{
                    Text("Text input")
                    Image(systemName: "text.viewfinder")
                }
            FourthView()
                .tabItem{
                    Text("text input")
                    Image(systemName: "text.viewfinder")
                }
            FifthView()
                .tabItem{
                    Text("Image Loader")
                    Image(systemName: "text.viewfinder")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
