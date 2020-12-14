//
//  BottomMainView.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/05.
//

import SwiftUI

struct BottomMainView: View {
    private let rests: [Rest] = Rest.dummyRest
    private let sortVariant = ["Distance", "Evaluation"]
    @State private var sortedIndex: Int = 0
    var body: some View {
        VStack {
            Divider()
                .padding(.bottom, 20)

            HStack {
                Spacer()

                Menu("Sort") {
                    Picker("Sort restoran", selection: $sortedIndex) {
                        ForEach(0 ..< sortVariant.count, id: \.self) {
                            Text(sortVariant[$0])
                        }
                    }
                }
                .foregroundColor(.main_red)
            }

            List(rests) { _ in
                RestRow()
            }
        }
    }
}

struct BottomMainView_Previews: PreviewProvider {
    static var previews: some View {
        BottomMainView()
    }
}

struct Rest: Identifiable {
    var id = UUID()
    let name: String
    let type: String
}

extension Rest {
    static let dummyRest = [
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
        Rest(name: "RestoranA", type: "Sushi"),
    ]
}
