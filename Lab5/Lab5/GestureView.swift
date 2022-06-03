//
//  GestureView.swift
//  Lab5
//
//  Created by Marcin Klisz on 03/06/2022.
//

import SwiftUI

struct GestureView: View {
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    var body: some View {
        Text("magnification gesture")
            .rotationEffect(currentAmount + finalAmount)
                        .gesture(
                            RotationGesture()
                                .onChanged { angle in
                                    currentAmount = angle
                                }
                                .onEnded { angle in
                                    finalAmount += currentAmount
                                    currentAmount = .zero
                                }
                        )
    }
}

struct GestureView_Previews: PreviewProvider {
    static var previews: some View {
        GestureView()
    }
}
