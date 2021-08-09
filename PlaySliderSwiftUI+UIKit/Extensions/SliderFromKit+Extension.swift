//
//  SliderFromKit+Extension.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 08.08.2021.
//

import SwiftUI

extension SliderFromKit {
    class Coordinator: NSObject {
        
        @Binding var currentValue: Double
 
        init(currentValue: Binding<Double>) {
            self._currentValue = currentValue
        }
        
        @objc func valueChanged(_ sender: UISlider) {
             self.currentValue = Double(sender.value)
           }
    }
}
