//
//  SecondView.swift
//  Lab4
//
//  Created by Marcin Klisz on 17/05/2022.
//
import SwiftUI

enum course: String, CaseIterable, Identifiable {
    case pizza, iceCream
    var id: Self {self}
}

enum toppings: String, CaseIterable, Identifiable {
    case chocolade, strawberry, blueberry, corn, pulledBeef, pepperoni
    var id: Self {self}
}


enum sauces: String, CaseIterable, Identifiable {
    case hot, mild, saltCarmel, frosting
    var id: Self {self}
}


struct SecondView: View {
    @State private var mainCourse: course = .iceCream
    @State private var topping: toppings = .chocolade
    @State private var sauce: sauces = .frosting
    @State private var showOrder = false
    
    var body: some View {
        VStack{
            if showOrder {
                Text("Your order is \(mainCourse.rawValue) with \(topping.rawValue) and \(sauce.rawValue) sauce")
            }
            HStack{
                Text("dish: ")
                Spacer()
                    Picker("Dish", selection: $mainCourse){
                        Text("pizza").tag(course.pizza)
                        Text("ice cream").tag(course.iceCream)
                    }.pickerStyle(.segmented)
            }.padding()
            
            HStack{
                Text("topping: ")
                Spacer()
                    Picker("topping", selection: $topping){
                        switch mainCourse {
                        case .pizza:
                            Text("corn").tag(toppings.corn)
                            Text("pulled beef").tag(toppings.pulledBeef)
                            Text("corn").tag(toppings.pepperoni)
                        case .iceCream:
                            Text("chocolade").tag(toppings.chocolade)
                            Text("blueberry").tag(toppings.blueberry)
                            Text("strawberry").tag(toppings.strawberry)
                        }
                    }.pickerStyle(.segmented)
            }.padding()
            
            HStack{
                Text("sauce: ")
                Spacer()
                    Picker("Dish", selection: $sauce){
                        switch mainCourse {
                        case .pizza:
                            Text("Hot").tag(sauces.hot)
                            Text("Mild").tag(sauces.mild)
                        case .iceCream:
                            Text("frosting").tag(sauces.frosting)
                            Text("salt carmel").tag(sauces.saltCarmel)
                        }
                    }.pickerStyle(.segmented)
                }.padding()
            Toggle("Show order", isOn: $showOrder)
                .padding()
            }
        }
    }

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
