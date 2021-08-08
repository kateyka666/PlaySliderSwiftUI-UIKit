//
//  ButtonViewModifier.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 06.08.2021.
//

import SwiftUI

struct ButtonViewModifier: ViewModifier {
    
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 60)
            .background(color)
            .cornerRadius(30)
            .overlay(
                Capsule()  .strokeBorder(Color.black, lineWidth: 4)
            )
            .foregroundColor(Color(.systemGray6))
    }
}


