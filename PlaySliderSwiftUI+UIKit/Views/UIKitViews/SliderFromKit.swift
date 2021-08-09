//
//  SliderFromKit.swift
//  PlaySliderSwiftUI+UIKit
//
//  Created by Екатерина Боровкова on 05.08.2021.
//

import SwiftUI

struct SliderFromKit: UIViewRepresentable {
  
    @Binding var currentValue: Double
    @Binding var alphaValue: CGFloat
    var minValue: Int
    var maxValue: Int

    func makeUIView(context: Context) -> UISlider {
        let slider = UISlider()
        
        slider.thumbTintColor = .red.withAlphaComponent(alphaValue)
        slider.value = Float(currentValue)
        slider.minimumValue = Float(minValue)
        slider.maximumValue = Float(maxValue)
        
        slider.addTarget(
              context.coordinator,
            action: #selector(Coordinator.valueChanged(_:)),
              for: .valueChanged
            )
     
        return slider
    }
    
//    обновляет значение слайдера
    func updateUIView(_ uiView: UISlider, context: Context) {
        uiView.value = Float(currentValue)
        uiView.thumbTintColor = .red.withAlphaComponent(alphaValue)
      
    }
    func makeCoordinator() -> Coordinator {
        Coordinator(currentValue: $currentValue)
    }
}


struct SliderFromKit_Previews: PreviewProvider {
    static var previews: some View {
        SliderFromKit(currentValue: .constant(90), alphaValue: .constant(90), minValue: 0, maxValue: 100)
    }
}
