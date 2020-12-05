//
//  MainView.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()

        Button("CLick") {
            Logger.info("clicked")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
