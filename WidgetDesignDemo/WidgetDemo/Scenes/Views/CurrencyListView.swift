//
//  CurrencyListView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct CurrencyListView: View {
    let mainWidth = DeviceType.widgetSize.width
    
    let currencyData: [CurrencyModel]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(currencyData) { currency in
                CurrencyView(currency: currency)
                Spacer().frame(height: mainWidth / 22.5)
            }
        }
    }
}
