//
//  FirstView.swift
//  Lab3
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI


class FilterSheet: ObservableObject {
    @Published var showSheet = false
}

struct Number: Identifiable {
    let value = Int.random(in: 1..<1000)
    let index: Int
    let id = UUID()
    
    init(index: Int){
        self.index = index
    }
}

func makeRandIntList(count : Int) -> Array<Number> {
        var RandList = [Number]()
    for index in stride(from: 0, to: count, by: 1){
        RandList.append(Number(index: index))
    }
    return RandList
}

enum filterType {
    case ASC
    case DESC
}

var myNumList = makeRandIntList(count: 100)

func sortList(type: filterType){
    switch(type.self){
    case .ASC:
        myNumList = myNumList.sorted(by: {$0.value < $1.value})
        break
    case .DESC:
        myNumList = myNumList.sorted(by: {$0.value > $1.value})
        break
    }
}

func resetList(){
    myNumList = myNumList.sorted(by: {$0.index < $1.index})
}

struct FirstView: View {
    @StateObject var showFilterTab = FilterSheet()
    @ObservedObject var FilterTab = FilterSheet()
    var body: some View {
        VStack{
                Button("Show Filters"){
                    showFilterTab.showSheet = true
                }.sheet(isPresented: $showFilterTab.showSheet , content: {
                    SheetContentView()
                })
            List(myNumList){
                Text($0.value.description)
            }
            
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
            .previewInterfaceOrientation(.portrait)
    }
}

struct SheetContentView: View {
    @Environment(\.presentationMode) var presentationMode
    @State  var searchNum = " "
    var body: some View {
        Spacer()
            .frame(height: 10)
        Section(header: Text("Apply Custom Filter").font(.title2).bold()){
            HStack {
                Button("Sort DESC"){
                    sortList(type: .DESC)
                    presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(.bordered)
                Button("Sort ASC"){
                    sortList(type: .ASC)
                    presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(.bordered)
                Button("Reset all rules"){
                    resetList()
                    presentationMode.wrappedValue.dismiss()
                }
                .buttonStyle(.bordered)
            }
        }
    }
}


