//
//  CurrencyWidgetView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI
import WidgetKit

struct CurrencyWidgetView: View {
    let mainWidth = DeviceType.widgetSize.width
    let entry: Provider.Entry
    let widgetFamily: WidgetFamily
    
    var body: some View {
        ZStack {
            Color(hex: WidgetColors.backgroundColor.rawValue)
            
            switch widgetFamily {
            case .systemLarge:
                LargeWidgetView(entry: entry)
            case .systemMedium:
                MediumWidgetView(entry: entry)
            default:
                Text("\(widgetFamily.description)")
            }
        }
    }
}
