//
//  RestRow.swift
//  Gurunavi
//
//  Created by Vladimir Rogozhkin on 2020/12/07.
//

import SwiftUI

struct RestRow: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 20) {
                VStack {
                    Image("1-1")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 110, height: 110)
                        .clipShape(Circle())
                        .shadow(color: .black, radius: 10)
                }

                VStack(alignment: .leading) {
                    Text("Restoran Name")
                        .font(.title)
                        .bold()
                        .foregroundColor(.primary)

                    Text("Restoran name 2")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.secondary)
                }
            }

            HStack(alignment: .top) {
                Text("Address: ")
                Text("Tokyo, Shibuyaku, Jinnan 1-15-8 Hikidashino 5F")
            }

            HStack {
                VStack {
                    HStack {
                        Image(systemName: "location")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.main_red)
                        Text("Distance: ")
                    }
                    Text("300 m")
                }
                
                Spacer()
                
                VStack {
                    HStack {
                        Image(systemName: "star.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.yellow)
                        Text("Evaluation:")
                    }
                    Text("3.0/5.0")
                }
            }
        }
        .padding()
    }
}

struct RestRow_Previews: PreviewProvider {
    static var previews: some View {
        RestRow()
            .previewLayout(.fixed(width: 380, height: 300))
    }
}
