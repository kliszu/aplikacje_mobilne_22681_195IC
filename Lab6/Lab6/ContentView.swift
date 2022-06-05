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
                    Image(systemName: "1.square.fill")
                }
            SecondView()
                .tabItem{
                    Image(systemName: "2.square.fill")
                }
            ThirdView()
                .tabItem{
                    Image(systemName: "3.square.fill")
                }
            FourthView()
                .tabItem{
                    Image(systemName: "4.square.fill")
                }
            FifthView()
                .tabItem{
                    Image(systemName: "5.square.fill")
                }
            SixthView()
                .tabItem{
                    Image(systemName: "6.square.fill")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
