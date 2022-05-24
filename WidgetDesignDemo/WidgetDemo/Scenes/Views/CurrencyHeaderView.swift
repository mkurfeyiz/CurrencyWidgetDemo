//
//  CurrencyHeaderView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct CurrencyHeaderView: View {
    let mainWidth = DeviceType.widgetSize.width
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack() {
                Spacer().frame(width: mainWidth / 21.17)
                Text("Currency")
                    .setFont(size: .smallMediumSize, font: .sfRegularFont, color: .textColor, opacity: 0.6)
                    .frame(width: mainWidth / 5.9)
                Spacer().frame(width: mainWidth / 5.6)
                HStack {
                    HStack {
                        Text("Purchase")
                            .setFont(size: .smallMediumSize, font: .sfRegularFont, color: .textColor, opacity: 0.6)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    HStack {
                        Text("Sale")
                            .setFont(size: .smallMediumSize, font: .sfRegularFont, color: .textColor, opacity: 0.6)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                Spacer().frame(width: mainWidth / 18.9)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
