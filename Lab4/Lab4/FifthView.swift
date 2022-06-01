//
//  FifthView.swift
//  Lab4
//
//  Created by Marcin Klisz on 17/05/2022.
//

import SwiftUI
import AlertToast

struct FifthView: View {
    @State private var showAlert = false
    @State private var showImage = false
    @State private var imageLoaded = false
    var body: some View {
        VStack{
            
            if showImage {
                Image("mac")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                    .clipShape(Circle())
            }
            Spacer()
                .frame(height:100)
            Button("Show image"){
                showAlert = true
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                    showAlert = false
                    imageLoaded = true
                    showImage = true
                }
                
            }
            .toast(isPresenting: $showAlert){
                AlertToast(displayMode: .hud , type: .loading, title: "Loading image", subTitle: "Please wait!")
            }
            .toast(isPresenting: $imageLoaded){
                AlertToast(displayMode: .hud, type: .regular, title: "Image Loaded")
            }
            .padding()
            .buttonStyle(.borderedProminent)
            
        }
    }
}

struct FifthView_Previews: PreviewProvider {
    static var previews: some View {
        FifthView()
    }
}
