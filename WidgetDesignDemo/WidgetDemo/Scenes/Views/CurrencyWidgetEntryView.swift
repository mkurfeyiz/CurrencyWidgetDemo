//
//  CurrencyWidgetEntryView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct CurrencyWidgetEntryView : View {
    var entry: Provider.Entry
    @Environment(\.widgetFamily) var widgetFamily
    
    var body: some View {
        VStack {
            CurrencyWidgetView(entry: entry, widgetFamily: widgetFamily)
        }
    }
}
