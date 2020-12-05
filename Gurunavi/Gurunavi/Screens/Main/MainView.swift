//
//  MainView.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 20) {
            TopMainView()
            BottomMainView()
        }
        .padding(.horizontal, 20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
