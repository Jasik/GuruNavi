//
//  DetailView.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/06.
//

import SwiftUI

struct DetailView: View {
    @State var index: Int = 0
    let images = ["1-1", "1-2", "1-3", "1-4"]
    var body: some View {
        VStack(spacing: 15) {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .aspectRatio(4 / 3, contentMode: .fit)
            .edgesIgnoringSafeArea(.top)

            HStack {
                VStack(alignment: .leading) {
                    Text("Name of Restoran")
                        .font(.title)
                        .foregroundColor(.primary)
                    Text("Name of translate")
                        .font(.title2)
                        .foregroundColor(.secondary)
                }

                Spacer()
            }
            .padding(.horizontal, 20)

            HStack {
                Text("Distance: ")
                Text("500m")

                Spacer()

                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("3.0/5.0")
            }
            .padding(.horizontal, 20)

            HStack {
                Text("Address: Japan Tokyo Gotanda 2-13-20 1B")
                Spacer()
            }
            .padding(.horizontal, 20)

            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
