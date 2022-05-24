//
//  CurrencyView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct CurrencyView: View {
    let mainWidth = DeviceType.widgetSize.width
    var currency: CurrencyModel
    
    var body: some View {
        
        VStack {
            HStack {
                Spacer().frame(width: mainWidth / 18.9 )
                Image(currency.image)
                    .resizable()
                    .frame(width: mainWidth / 15, height: mainWidth / 22.5)
                Spacer().frame(width: mainWidth / 20)
                Text(currency.name)
                    .setFont(size: .largeSize, font: .sfRegularFont, color: .textColor)
                    .frame(width: mainWidth / 7.2, alignment: .leading)
                Spacer().frame(width: mainWidth / 8.3)
                HStack {
                    HStack {
                        Text("₺" + String(currency.purchase.truncate(places: 4)))
                            .setFont(size: .mediumLargeSize, font: .sfRegularFont, color: .textColor)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    HStack {
                        Text("₺" + String(currency.sale.truncate(places: 4)))
                            .setFont(size: .mediumLargeSize, font: .sfRegularFont, color: .textColor)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                Spacer().frame(width: mainWidth / 24)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}
