//
//  ThirdView.swift
//  Lab4
//
//  Created by Marcin Klisz on 17/05/2022.
//
import SwiftUI

func generateRandomNumber() -> String {
    return String(Int.random(in: 0...100000))
}


struct ThirdView: View {
    @State private var showText = false
    var body: some View {
        VStack{
            if showText {
                Text(generateRandomNumber())
            }
            else {
                Text(" ")
            }
            Toggle("Generate String", isOn: $showText)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
