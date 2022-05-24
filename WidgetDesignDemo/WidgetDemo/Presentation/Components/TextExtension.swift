//
//  TextExtension.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

extension Text {
    // Incase we might add different font families in the future, we included font type in parameters
    func setFont(size: FontSizes, font: FontTypes, color: WidgetColors, opacity: Double? = 1.0) -> some View {
        // Scales font sizes for all device dimensions
        // We are dividing size with 360 because we made our UI design based on iPhone 11 viewport bounds.
        let sizeRatio = 360 / size.rawValue
        let fontSize = DeviceType.widgetSize.width / sizeRatio
        return self
            .font(.custom(font.rawValue, size: CGFloat(fontSize)))
            .foregroundColor(Color(hex: color.rawValue))
            .opacity(opacity!)
            .frame(height: 20)
    }
}
