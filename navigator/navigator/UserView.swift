//
//  UserView.swift
//  navigator
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(.blue)
            Text("User View")
                .foregroundColor(.white)
                .font(.system(size: 40, weight: .bold))
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
