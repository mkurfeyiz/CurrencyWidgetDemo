//
//  CurrencyModel.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import Foundation

struct CurrencyModel: Identifiable {
    let image: String
    let name: String
    let purchase: Double
    let sale: Double
    var id: String {
        name
    }
}
