//
//  ThirdView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI

struct ThirdView: View {
    var body: some View {
        VStack{
            Text("Double tap gesture")
                .onTapGesture(count: 2) {
                    print("Double tapped!")
                }
                .padding()
                .border(Color.black, width: 2)
            Text("Long Pressed")
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long pressed!")
                }
                .padding()
                .border(Color.black, width: 2)
        }
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
