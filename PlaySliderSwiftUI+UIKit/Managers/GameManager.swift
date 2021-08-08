//
//  GameValue.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 07.08.2021.
//

import SwiftUI

class GameManager: ObservableObject {

    @Published var gameValue: GameValue
    
    init(gameValue: GameValue){
        self.gameValue = gameValue
    }
    
    func checkMe() {
        gameValue.showAlert = true
    }
    
    func startOver() {
        gameValue.targetValue = Int.random(in: 0...100)
    }
    
    @discardableResult func computeScore() -> CGFloat {
        let difference = abs(gameValue.targetValue - lround(gameValue.currentValue))
        let alphaValue = 100 - difference
        switch alphaValue {
        case 100:
            gameValue.alpha = 0
        case 80...99:
            gameValue.alpha = 0.1
        case 60...79:
            gameValue.alpha = 0.3
        case 40...59:
            gameValue.alpha = 0.5
        case 20...39:
            gameValue.alpha = 0.7
        case 0...19:
            gameValue.alpha = 1
        default:
            break
        }
        return gameValue.alpha
    }
    
}


