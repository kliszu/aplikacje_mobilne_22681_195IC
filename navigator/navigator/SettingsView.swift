//
//  SettingsView.swift
//  navigator
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(.green)
            Text("Settings View")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
