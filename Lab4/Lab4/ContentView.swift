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
                    Text("Picker")
                    Image(systemName: "filemenu.and.selection")
                }
            ThirdView()
                .tabItem{
                    Text("Toogle number")
                    Image(systemName: "number")
                }
            FourthView()
                .tabItem{
                    Text("date picker")
                    Image(systemName: "calendar")
                }
            FifthView()
                .tabItem{
                    Text("Image Loader")
                    Image(systemName: "photo")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
