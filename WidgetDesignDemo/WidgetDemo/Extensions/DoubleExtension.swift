//
//  DoubleExtension.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import Foundation

// Helps us to truncate the values after comma to given count
extension Double {
    func truncate(places: Int)-> Double {
        // For example, 16.1234567.truncate(places: 4) returns 16.1234
        return Double(floor(pow(10.0, Double(places)) * self) / pow(10.0, Double(places)))
    }
}
