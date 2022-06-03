//
//  ContentView.swift
//  Lab6
//
//  Created by Marcin Klisz on 03/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstView()
                .tabItem{
                    Text("scroll View")
                    Image(systemName: "scroll")
                }
            SecondView()
                .tabItem{
                    Text("align View")
                    Image(systemName: "questionmark.folder")
                }
            ThirdView()
                .tabItem{
                    Text("gestures")
                    Image(systemName: "hand.tap")
                }
            GestureView()
                .tabItem{
                    Text("gestures")
                    Image(systemName: "hand.tap")
                }
            FourthView()
                .tabItem{
                    Text("list with swipe")
                    Image(systemName: "hand.draw")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
