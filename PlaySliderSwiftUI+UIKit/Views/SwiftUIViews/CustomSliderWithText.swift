//
//  CustomSliderWithText.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 07.08.2021.
//

import SwiftUI


struct CustomSliderWithText: View {
    
    @EnvironmentObject var gameManager: GameManager
    
    var body: some View {
        
        HStack{
            
            Text("0")
            SliderFromKit(currentValue: $gameManager.gameValue.currentValue,
                          alphaValue: $gameManager.gameValue.alpha,
                          minValue: 0,
                          maxValue: 100)
                .onChange(of: gameManager.gameValue.currentValue, perform: { _ in
                    gameManager.computeScore()
                })
            Text("100")
            
        }.padding(.horizontal)
    }
    
}

struct CustomSliderWithText_Previews: PreviewProvider {
    static var previews: some View {
        CustomSliderWithText().environmentObject(GameManager(gameValue: GameValue()))
    }
}
