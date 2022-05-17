//
//  ThirdView.swift
//  Lab3
//
//  Created by Marcin Klisz on 20/04/2022.
//


import SwiftUI
import Foundation

struct ThirdView: View {
    @State var isActive = false
    @State private var isPresented = false
    @State var progress = 0.0
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: FourthView(progress: progress), isActive: $isActive){
                }
                HStack{
                    Text("First step")
                        .bold()
                        .foregroundColor(.green.opacity(0.2))
                        .font(.system(size: 20))
                    Text("Second step")
                        .bold()
                        .foregroundColor(.gray.opacity(0.65))
                        .font(.system(size: 20))
                    Text("Final step")
                        .bold()
                        .foregroundColor(.gray.opacity(0.65))
                        .font(.system(size: 20))
                }
                ProgressView(value: progress, total: 100)
                    .progressViewStyle(CustomProgresViewStyle())
                    .padding(30)
                Button("Press"){
                    if(progress >= 35.0){
                        isPresented = true
                    }else {
                        progress += 3.5
                    }
                }.alert("You can move to the next step", isPresented: $isPresented) {
                    Button("OK", role: .cancel){
                        isActive = true
                    }
                }
                .buttonStyle(CustomProgresButtonStyle())
            }
            }.navigationTitle("Page One")
                .navigationBarTitleDisplayMode(.inline)
        }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}

struct CustomProgresViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ProgressView(configuration)
            .padding(8)
            .background(.gray.opacity(0.25))
            .accentColor(.red)
            .cornerRadius(8)
    }
}

struct CustomProgresButtonStyle: ButtonStyle{
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(width: 100, height: 100, alignment: .center)
            .padding(10)
            .background(.red)
            .foregroundColor(.black)
            .clipShape(Circle())
            
    }
}
