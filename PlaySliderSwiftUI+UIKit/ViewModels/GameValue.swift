//
//  GameValue.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 07.08.2021.
//

import UIKit

struct GameValue {
    var targetValue = Int.random(in: 0...100)
    var currentValue = 30.0
    
    var showAlert: Bool = false
    var alpha: CGFloat = 1
}
