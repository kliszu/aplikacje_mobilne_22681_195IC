//
//  SecondView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ScrollView{
            VStack{
                Text("Vstack Example")
                    .frame(width:100, height: 50)
                    .background(.brown)
                Text("Vstack Example")
                    .frame(width:100, height: 50)
                    .background(.brown)
                Text("Vstack Example")
                    .frame(width:100, height: 50)
                    .background(.brown)

            }
            .frame(width: 150, height: 200)
            .background(.gray)
            
            HStack{
                Text("Hstack Example")
                    .frame(width:100, height: 50)
                    .background(.orange)
                Text("Hstack Example")
                    .frame(width:100, height: 50)
                    .background(.orange)
                Text("Hstack Example")
                    .frame(width:100, height: 50)
                    .background(.orange)

            }
            .frame(width: 500, height: 150)
            .background(.yellow)
            
            
            Text("Zstack Example")
            
            ZStack{
                Text("")
                    .frame(width:300, height: 300)
                    .background(.green)
                Text("")
                    .frame(width:150, height: 150)
                    .background(.red)
                Text("")
                    .frame(width:50, height: 50)
                    .background(.black)

            }
            .frame(width: 500, height: 500)
            .background(.pink)
        }
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
