//
//  StandardAppButton.swift
//  todotutorial
//
//  Created by Alen John on 2024-09-17.
//

import Foundation
import SwiftUI

struct StandardAppButton: View {
    var buttonName: String
    var backgroundColor: Color
    var textColor: Color
    var action: () -> Void
    var body: some View {
            Button(action: {
                action() // Execute the custom action passed to the button
            }) {
                Text(buttonName)
                    .frame(width: 200, height: 50)
                    .background(backgroundColor)
                    .foregroundStyle(textColor)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .cornerRadius(10)
            }
        }
//    var body: some View {
//        Button{
//            print("tapped")
//        } label: {
//            Text(buttonName)
//                .frame(width: 200, height: 50)
//                .background(backgroundColor)
//                .foregroundStyle(textColor)
//                .font(.system(size: 20, weight: .bold, design: .default))
//                .cornerRadius(10)
//        }
//    }
}
