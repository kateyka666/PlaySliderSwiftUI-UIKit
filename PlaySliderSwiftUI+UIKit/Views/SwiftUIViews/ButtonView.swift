//
//  ButtonView.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 05.08.2021.
//

import SwiftUI

struct ButtonView: View {
    
    var action: () -> Void
    var title: String
    
    var body: some View {
        Button(action: action, label: {
            Text(title)
        }).buttonViewModifier(.green)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(action: {}, title: "")
    }
}
