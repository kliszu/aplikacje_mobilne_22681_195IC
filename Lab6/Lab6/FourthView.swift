//
//  FourthView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI


struct FourthView: View {
    @State private var isAdded = false
    var body: some View {
        NavigationView{
            List{
                Text("Hello World")
                }
            }
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction){
                    NavigationLink(destination: FirstView()){
                        Text("Favourites")
                    }
                }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
