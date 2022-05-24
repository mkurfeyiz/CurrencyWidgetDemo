//
//  HeaderView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct HeaderView: View {
    let mainWidth = DeviceType.widgetSize.width
    
    var body: some View {
        VStack {
            Spacer().frame(height: mainWidth / 36)
            HStack(alignment: .center) {
                Spacer().frame(width: mainWidth / 36)
                Image(systemName: "applelogo")
                    .foregroundColor(Color(hex: WidgetColors.textColor.rawValue))
                Spacer().frame(width: mainWidth / 51.4)
                Text("CURRENCY WIDGET")
                    .setFont(size: .mediumSize, font: .sfRegularFont, color: .textColor, opacity: 0.6)
                Spacer()
                Image(systemName: "chevron.down")
                    .foregroundColor(Color(WidgetColors.grayColor.rawValue))
                    .opacity(0.6)
                Spacer().frame(width: mainWidth / 30)
            }
        }
    }
}
