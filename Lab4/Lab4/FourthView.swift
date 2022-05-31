//
//  FourthView.swift
//  Lab4
//
//  Created by Marcin Klisz on 17/05/2022.
//

import SwiftUI

struct FourthView: View {
    @State var dateVar = Date()
    @State private var showAlert = false
    var body: some View {
        VStack{
            Text("Date Picker")
                .font(.title)
                .bold()
            DatePicker("Graphical Date", selection: $dateVar)
                .datePickerStyle(.graphical)
            Button("Display date"){
                showAlert = true
            }
            .buttonStyle(.borderedProminent)
            .alert(isPresented: $showAlert){
                Alert(
                title: Text("Picked Date"),
                message: Text(dateVar, format: Date.FormatStyle().day().month().year().hour().minute()))
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
