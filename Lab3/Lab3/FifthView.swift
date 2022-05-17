//
//  FifthView.swift
//  Lab3
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

struct FifthView: View {
    @State var progress: Double?
    @State var isActive = false
    @State var isPresented = false
    @State var finalComplete = 0.45
    var body: some View {
        VStack{
            HStack{
                Text("First step")
                    .bold()
                    .foregroundColor(.green)
                    .font(.system(size: 20))
                Text("Second step")
                    .bold()
                    .foregroundColor(.green)
                    .font(.system(size: 20))
                Text("Final step")
                    .bold()
                    .foregroundColor(.green.opacity(finalComplete))
                    .font(.system(size: 20))
            }
            ProgressView(value: progress, total: 100)
                .progressViewStyle(RoundedRectProgressViewStyle())
                .padding(30)
            Button("Press"){
                if(progress! >= 100.0){
                    isPresented = true
                } else {
                    progress! += 3.5
                }
            }.alert("Gratulations! You did it!", isPresented: $isPresented) {
                Button("OK", role: .cancel){
                    finalComplete = 1
                }
            }
            .buttonStyle(CustomProgresButtonStyle())
        }.navigationTitle("Final Step")
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}

struct RoundedRectProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 14)
                .frame(width: 250, height: 28)
                .foregroundColor(.blue)
                .overlay(Color.black.opacity(0.5)).cornerRadius(14)
            
            RoundedRectangle(cornerRadius: 14)
                .frame(width: CGFloat(configuration.fractionCompleted ?? 0) * 250, height: 28)
                .foregroundColor(.yellow)
        }
        .padding()
    }
}
