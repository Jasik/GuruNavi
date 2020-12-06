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
        VStack {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .aspectRatio(4 / 3, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
