//
//  SecondView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI

struct SecondView: View {
    @State private var sliderVal = 100.0
    var body: some View {
        VStack{
            Image("mac_pc")
                .resizable()
                .scaledToFit()
                .frame(width: sliderVal)
                .padding()
            Slider(value: $sliderVal, in: 100...500, step: 1)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
