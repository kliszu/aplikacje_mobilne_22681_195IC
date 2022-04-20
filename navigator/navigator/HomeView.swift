//
//  HomeView.swift
//  navigator
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(.red)
            Text("Home View")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
