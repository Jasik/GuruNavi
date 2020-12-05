//
//  TopMainView.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/05.
//

import SwiftUI

struct TopMainView: View {
    @State var searchText: String = ""

    var body: some View {
        VStack {
            HStack {
                TextField("Search restoran", text: $searchText)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    Logger.info("Search Button")
                }, label: {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.main_red)
                })
            }
        }
        .padding(.horizontal, 20)
    }
}

struct TopMainView_Previews: PreviewProvider {
    static var previews: some View {
        TopMainView()
    }
}
