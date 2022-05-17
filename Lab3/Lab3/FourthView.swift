//
//  FourthView.swift
//  Lab3
//
//  Created by Marcin Klisz on 20/04/2022.
//

import SwiftUI

struct FourthView: View {
    @State var isActive = false
    @State var isPresented = false
    @State var progress: Double?
    var body: some View {
        VStack{
            NavigationLink(destination: FifthView(progress: progress)){
                }
            HStack{
                Text("First step")
                    .bold()
                    .foregroundColor(.green)
                    .font(.system(size: 20))
                Text("Second step")
                    .bold()
                    .foregroundColor(.green.opacity(0.2))
                    .font(.system(size: 20))
                Text("Final step")
                    .bold()
                    .foregroundColor(.gray.opacity(0.6))
                    .font(.system(size: 20))
            }
            ProgressView(value: progress, total: 100)
                .progressViewStyle(CustomCircularProgressViewStyle())
                .padding(30)
            Button("Press"){
                if(progress! >= 70.0){
                    isPresented = true
                } else {
                    progress! += 3.5
                }
            }.alert("You can move to the final step, click button in right upper corner", isPresented: $isPresented) {
                Button("OK", role: .cancel){
                    isActive = true
                }
            }
            .buttonStyle(CustomProgresButtonStyle())
        }.navigationTitle("Second Step")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .primaryAction) {
                    if(isActive){
                        NavigationLink(destination: FifthView(progress: progress)){
                            Text("Next step")
                            Image(systemName: "chevron.right")
                        }
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

struct CustomCircularProgressViewStyle: ProgressViewStyle {
    func makeBody(configuration: Configuration) -> some View {
        ZStack {
            Circle()
                .trim(from: 0.0, to: CGFloat(configuration.fractionCompleted ?? 0))
                .stroke(Color.blue, style: StrokeStyle(lineWidth: 3, dash: [10, 5]))
                .rotationEffect(.degrees(-90))
                .frame(width: 200)
            
            if let fractionCompleted = configuration.fractionCompleted {
                Text(fractionCompleted < 1 ?
                        "Completed \(Int((configuration.fractionCompleted ?? 0) * 100))%"
                        : "Done!"
                )
                .fontWeight(.bold)
                .foregroundColor(fractionCompleted < 1 ? .orange : .green)
                .frame(width: 180)
            }
        }
    }
}
