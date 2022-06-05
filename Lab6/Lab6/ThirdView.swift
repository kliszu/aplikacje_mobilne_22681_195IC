//
//  ThirdView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI
import SDWebImage
import SDWebImageSwiftUI


struct ThirdView: View {
    var url = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fi.pinimg.com%2F736x%2F75%2F68%2F84%2F75688456e90445e05aeeecfa35f73723.jpg&f=1&nofb=1"
    var body: some View {
        VStack{
            WebImage(url: URL(string: url))
                .resizable()
                    .placeholder(Image(systemName: "photo"))
                    .placeholder {
                        Rectangle().foregroundColor(.gray)
                    }
                    .indicator(.progress)
                    .transition(AnyTransition.flipFromLeft)
                    .scaledToFit()
                    .frame(width: 300, height: 300, alignment: .center)
                    .padding()
            HStack{
                Image(systemName: "exclamationmark.square.fill")
                Image(systemName: "lungs.fill")
                Image(systemName: "heart.text.square")
                Image(systemName: "timeline.selection")
                Image(systemName: "gamecontroller.fill")
            }
            .padding()
        }
        
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
    }
}
