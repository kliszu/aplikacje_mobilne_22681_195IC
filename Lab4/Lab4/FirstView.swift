//
//  FirstView.swift
//  Lab4
//
//  Created by Marcin Klisz on 17/05/2022.
//

import SwiftUI

struct FirstView: View {
    @State private var stringToDisplay = ""
    @State private var passwordString = ""
    @State private var wordToDisplay = " "
    var body: some View {
        VStack{
            HStack{
                Text("Login input")
                    .font(.title2)
                    .bold()
                Spacer()
            }
        TextField("Text", text: $stringToDisplay, prompt: Text("Login"))
            .textFieldStyle(.roundedBorder)
        Spacer()
                .frame(height: 100)
            HStack{
                Text("Password input")
                    .font(.title2)
                    .bold()
                Spacer()
            }
        SecureField("Text", text: $passwordString, prompt: Text("Login"))
            .textFieldStyle(.roundedBorder)
            Spacer()
                .frame(height: 100)
        HStack{
            Text("Password input")
                .font(.title2)
                .bold()
            Spacer()
            }
        TextField("Text", text: $wordToDisplay, prompt: Text("your string"))
            .textFieldStyle(.roundedBorder)
            Text("Your sentence: \(wordToDisplay)")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
