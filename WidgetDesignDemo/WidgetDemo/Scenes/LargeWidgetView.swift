//
//  LargeWidgetView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct LargeWidgetView: View {
    let mainWidth = DeviceType.widgetSize.width
    let entry: Provider.Entry
    
    var body: some View {
        VStack {
            VStack {
                HeaderView()
                Spacer().frame(height: mainWidth / 15.5)
                CurrencyHeaderView()
                Spacer().frame(height: mainWidth / 180)
                DividerView()
                Spacer().frame(height: mainWidth / 22.4)
                CurrencyListView(currencyData: [entry.usd, entry.euro, entry.gold])
            }
            
            VStack {
                DividerView()
                Spacer().frame(height: mainWidth / 20)
                ShortcutListView()
                Spacer().frame(height: mainWidth / 40)
            }
            
            VStack {
                DividerView()
                Spacer().frame(height: mainWidth / 120)
                FooterView(date: entry.date)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

