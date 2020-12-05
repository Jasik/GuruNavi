//
//  BottomLineTextFieldStyle.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/05.
//

import SwiftUI

struct BottomLineTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        VStack {
            configuration
            Rectangle()
                .frame(height: 0.8, alignment: .bottom)
                .foregroundColor(.main_red)
        }
    }
}
