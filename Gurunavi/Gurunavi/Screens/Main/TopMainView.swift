//
//  TopMainView.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/05.
//

import SwiftUI

struct TopMainView: View {
    @State var searchText: String = ""
    @State private var distance: Int = 0
    private let distances = ["Not selected", "100m", "300m", "500m", "1km"]

    var body: some View {
        VStack(spacing: 20) {
            HStack(spacing: 10) {
                TextField("Search restoran", text: $searchText)
                    .textFieldStyle(BottomLineTextFieldStyle())
                Button(action: {
                    Logger.info("Search Button")
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28, height: 28)
                        .foregroundColor(.main_red)
                })
            }
            HStack {
                Button(action: {
                    Logger.info("current geo position")
                }, label: {
                    HStack {
                        Text("Current geo")
                            .foregroundColor(.main_red)
                        Image(systemName: "location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 28, height: 28)
                            .foregroundColor(.main_red)
                    }
                })

                Spacer()

                Menu("Distance: \(distances[distance])") {
                    Picker("Chose distance", selection: $distance) {
                        ForEach(0 ..< distances.count, id: \.self) {
                            Text(distances[$0])
                        }
                    }
                }
                .foregroundColor(.main_red)
            }
        }
    }
}

struct TopMainView_Previews: PreviewProvider {
    static var previews: some View {
        TopMainView()
    }
}
