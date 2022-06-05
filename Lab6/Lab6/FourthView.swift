//
//  FourthView.swift
//  Lab5
//
//  Created by Marcin Klisz on 01/06/2022.
//

import SwiftUI

struct FourthView: View {
    var body: some View {
        let status = Reach().connectionStatus()

        switch status {
        case .unknown, .offline:
            VStack{
                Image(systemName: "wifi.slash")
                Text("Not connected")
            }
        case .online(.wwan):
            VStack{
                Image(systemName: "antenna.radiowaves.left.and.right")
                Text("Connected via Cellular")
            }
        case .online(.wiFi):
            VStack{
                Image(systemName: "wifi")
                Text("Connected via WiFi")
            }
        }
    }
}

struct FourthView_Previews: PreviewProvider {
    static var previews: some View {
        FourthView()
    }
}
