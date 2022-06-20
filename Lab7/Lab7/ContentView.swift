//
//  ContentView.swift
//  Lab7
//
//  Created by Marcin Klisz on 13/06/2022.
//

import SwiftUI
import CoreData


struct ContentView: View {
    var body: some View {
        TabView{
            PendingTaskView()
                .tabItem {
                    Label("Pending Tasks", systemImage: "tray.and.arrow.down")
                }
            CompletedTaskView()
                .tabItem {
                    Label("Completed Tasks", systemImage: "tray.full")
                }
        }
    }
}
