//
//  FirstView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100){
                    Text("Row \($0)")
            }
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
