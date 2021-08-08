//
//  AlertModifier.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 06.08.2021.
//

import SwiftUI

struct AlertModifier: ViewModifier {
    
    @Binding var showAlert: Bool
    var text: String
    
    func body(content: Content) -> some View {
        content.alert(isPresented: $showAlert) {
            Alert(
                title: Text(text)
            )
        }
    }
    
}
