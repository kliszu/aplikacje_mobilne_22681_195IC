//
//  FourthView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI
import AlertToast

struct Contact: Identifiable {
    let name: String
    let id = UUID()
}

private var contacts = [
    Contact(name: "Dominik Makuch"),
    Contact(name: "Mominik Dakuch"),
    Contact(name: "Lominik Kakuch"),
    Contact(name: "Dominik Lachuch"),
    Contact(name: "Andrzej Bakuch"),
    Contact(name: "Dawid Straight"),
    Contact(name: "Bolek Makuch"),
    Contact(name: "Lolek Makuch"),
]

private var favContacts: [Contact] = []

struct FavouritesContcats: View{
    @State private var isAdded = false
    var body: some View{
        List{
            ForEach(favContacts) { person in
                Text(person.name)
                    .swipeActions{
                            Button {
                                
                            } label: {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                        }
            }
        }
    }
}

struct FourthView: View {
    @State private var isAdded = false
    var body: some View {
        NavigationView{
            List{
                ForEach(contacts) { person in
                    Text(person.name)
                        .swipeActions{
                                Button {
                                    favContacts.append(person)
                                    isAdded = true
                                } label: {
                                    Label("Favorite", systemImage: "star")
                                }
                                .tint(.yellow)
                            }
                }
            }
            .navigationTitle("Contacts")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .primaryAction){
                    NavigationLink(destination: FavouritesContcats()){
                        Text("Favourites")
                    }
                }
            }
            .toast(isPresenting: $isAdded){
                AlertToast(displayMode: .banner(.pop),type: .complete(.green), title: "Successfully added to favourites")
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
