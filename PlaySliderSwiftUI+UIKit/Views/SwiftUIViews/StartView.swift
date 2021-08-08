//
//  ContentView.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 05.08.2021.
//

import SwiftUI

struct StartView: View {
    @EnvironmentObject var gameManager: GameManager
    var body: some View {
        VStack(spacing:30){
            
            Text("Подвинь слайдер, как можно ближе к: \(gameManager.gameValue.targetValue)")
               
            CustomSliderWithText()
            
            ButtonView(
                action: gameManager.checkMe,
                title: "Проверь меня")
                .alertModifier(showAlert: $gameManager.gameValue.showAlert,
                               text: "Значение слайдера \(lround(gameManager.gameValue.currentValue))")
            
            ButtonView(action: gameManager.startOver, title: "Начать заново")
        }
      
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StartView().environmentObject(GameManager(gameValue: GameValue()))
    
}

}
