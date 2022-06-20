//
//  Lab7App.swift
//  Lab7
//
//  Created by Marcin Klisz on 13/06/2022.
//

import SwiftUI

@main
struct Lab7App: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
