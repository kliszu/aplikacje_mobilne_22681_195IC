//
//  SixthView.swift
//  Lab6
//
//  Created by Marcin Klisz on 04/06/2022.
//

import SwiftUI

struct SixthView: View {
    @State private var joke: String = ""
    @State private var jokeList = [String]()
    var body: some View {
        VStack{
            Spacer()
                .frame(height: 50)
            Text(joke)
                    Button {
                        Task {
                            do {
                                let (data, _) = try await URLSession.shared.data(from: URL(string:"https://api.chucknorris.io/jokes/random")!)
                                let decodedResponse = try? JSONDecoder().decode(Joke.self, from: data)
                                joke = decodedResponse?.value ?? "Can fetch joke from the internet, you're disconnected"
                                jokeList.append(joke)
                            } catch {
                                joke = "Can't fetch joke from the internet, you're disconnected, try again"
                            }
                        }
                    }label: {
                        Text("Fetch Joke")
                            .padding()
                    }
            Spacer()
                .frame(height: 10)
            Text("last joke")
                .bold()
            List{
                ForEach(jokeList, id: \.self ){ joke in
                    Text(joke)
                }
            }
        }
    }
}

struct SixthView_Previews: PreviewProvider {
    static var previews: some View {
        SixthView()
    }
}

struct Joke: Codable {
    let value: String
}
