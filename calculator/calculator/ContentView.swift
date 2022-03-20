//
//  ContentView.swift
//  calculator
//
//  Created by Marcin Klisz on 02/03/2022.
//

import SwiftUI

enum Operation {
    case add
    case substract
    case multiply
    case divide
}

struct ContentView: View {
    @State private var showErrorAlert: Bool = false
    @State private var displayedNumer : Double? {
        didSet {
            updateText()
        }
    }
    @State private var prevNumber: Double?
    @State private var currentOperation:  Operation?
    @State private var displayedText: String = "0"
    @State private var previousCalculations: [Double] = []
    
    var body: some View {
        VStack(spacing: 32){
            Spacer()
            
            VStack{
                ForEach(previousCalculations, id: \.self) { num in
                    HStack {
                        Spacer()
                        Text(String(format: "%g", num))
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                    .padding(.horizontal)
                }
            }
            
            HStack(){
                Spacer()
                Text(displayedText)
                    .font(.system(size:60))
                    .alert(isPresented: $showErrorAlert) {
                        Alert(title: Text("Error"), message:
                                Text("Cannot divide by 0"), dismissButton: .default(Text("OK")))
                    }
            }.padding(.horizontal)
            
            HStack(spacing: 32){
                VStack(spacing: 32){
                    HStack(spacing: 32){
                        CustomButton(title: "7") {
                            typeNumber(num: 7)
                        }
                        CustomButton(title: "8"){
                            typeNumber(num: 8)
                        }
                        CustomButton(title: "9"){
                            typeNumber(num: 9)
                        }
                    }
                    
                    HStack(spacing: 32){
                        CustomButton(title: "4"){
                            typeNumber(num: 4)
                        }
                        CustomButton(title: "5"){
                            typeNumber(num: 5)
                        }
                        CustomButton(title: "6"){
                            typeNumber(num: 6)
                        }
                    }
                    
                    HStack(spacing: 32){
                        CustomButton(title: "1"){
                            typeNumber(num: 1)
                        }
                        
                        CustomButton(title: "2"){
                            typeNumber(num: 2)
                        }
                        
                        CustomButton(title: "3"){
                            typeNumber(num: 3)
                        }
                    }
                    
                    HStack (spacing: 32) {
                        CustomButton(title: "C", color: .red){
                            clear()
                        }
                        CustomButton(title:"0"){
                            typeNumber(num: 0)
                        }
                        CustomButton(title: "=", color: .red){
                            equlas()
                        }
                    }
                }
                
                VStack(spacing: 32){
                    CustomButton(title: "+", color: .orange){
                        setOperation(operation: .add)
                    }
                    CustomButton(title: "-", color: .orange){
                        setOperation(operation: .substract)
                    }
                    CustomButton(title: "x", color: .orange){
                        setOperation(operation: .multiply)
                    }
                    CustomButton(title: "÷", color: .orange){
                        setOperation(operation: .divide)
                    }
                    
                }
                
            }
            
        }.font(.title)
    }
    
    
    func typeNumber( num: Double){
        if let currentNum = displayedNumer {
            displayedNumer = (currentNum * 10) + num
        } else {
            displayedNumer = num
        }
    }
    
    func updateText(){
        let number = displayedNumer ?? prevNumber ?? 0
        displayedText =  String(format: "%g", number)
    }
    
    func clear(){
        displayedNumer = nil
    }
    
    func setOperation (operation: Operation) {
        guard displayedNumer != nil, prevNumber == nil else {
            return
        }
        
        prevNumber = displayedNumer
        currentOperation = operation
        displayedNumer = nil
    }
    
    func equlas() {
        guard let previousNumber = prevNumber,
                let dispNumber = displayedNumer,
                let curOperation = currentOperation
                else {
           return
        }
        
        switch curOperation {
            case .add:
                displayedNumer = previousNumber + dispNumber
            case .substract:
                displayedNumer = previousNumber - dispNumber
            case .multiply:
                displayedNumer = previousNumber * dispNumber
            case .divide:
            if(dispNumber != 0){
                displayedNumer = previousNumber / dispNumber
            } else {
                showErrorAlert = true
                return
            }
        }
            
        prevNumber = nil
        currentOperation = nil
        
        if let calculation = displayedNumer {
            previousCalculations.append(calculation)
        }
        
    }
}

struct CustomButton: View {
    let title: String
    var color: Color = .green
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .frame(width: 64, height: 64)
                .foregroundColor(.white)
                .background(RoundedRectangle(cornerRadius: 8)
                                .foregroundColor(color))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
