//
//  SecondView.swift
//  Lab3
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

func randomString(length: Int) -> String {
    let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
    return String((0..<length).map{ _ in letters.randomElement()! })
}

struct WordRow: View {
    let id: Int
    var body: some View {
        HStack{
            Text(id.description)
            Spacer()
            Text(randomString(length: Int.random(in:5..<20)))
        }.padding(5)
    }
    init(id: Int){
        print("Loading row \(id)")
        self.id = id
    }
}

struct SecondView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(1...500, id: \.self, content: WordRow.init)
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
