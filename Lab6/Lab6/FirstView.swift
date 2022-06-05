//
//  FirstView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack{
        Image("img")
                .resizable().aspectRatio(contentMode: .fit)
            
        AsyncImage(url: URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fmedia.istockphoto.com%2Fphotos%2Fapple-mac-studio-m1-max-and-ultra-chip-processor-new-mac-studio-picture-id1397006435%3Fk%3D20%26m%3D1397006435%26s%3D170667a%26w%3D0%26h%3DYZXZmuNksBaazsqAMvJiCcris34KC2U3V7clj7NJ_VY%3D&f=1&nofb=1"))
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
