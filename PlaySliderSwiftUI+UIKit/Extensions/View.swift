//
//  View.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 08.08.2021.
//

import SwiftUI

extension View {
    
    func buttonViewModifier(_ color: Color) -> some View {
        ModifiedContent(
            content: self,
            modifier: ButtonViewModifier(color: color)
        )
    }
    
    func alertModifier(showAlert: Binding<Bool>, text: String) -> some View {
        ModifiedContent(
            content: self,
            modifier: AlertModifier(showAlert: showAlert, text: text)
        )
    }
}
