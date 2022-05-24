//
//  DeviceType.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import Foundation
import SwiftUI
import WidgetKit

public struct DeviceType {
    // Since we won't be using small widgets, we can declare same values for both large and medium widgets. Because large widgets and medium widgets have the same width.
    static var widgetSize = getDeviceWidgetSize(widgetFamily: .systemLarge)
    
    // MARK: - Static Functions
    // Gets size information of initialized device
    private static func getDeviceWidgetSize(widgetFamily: WidgetFamily) -> CGSize {
        switch UIScreen.main.bounds.size {
        case CGSize(width: 428, height: 926):
            return setWidgetSize(widgetFamily: widgetFamily, width: 364, largeHeight: 382, mediumHeight: 170)
        case CGSize(width: 414, height: 896):
            return setWidgetSize(widgetFamily: widgetFamily, width: 360, largeHeight: 379, mediumHeight: 169)
        case CGSize(width: 414, height: 736):
            return setWidgetSize(widgetFamily: widgetFamily, width: 348, largeHeight: 357, mediumHeight: 157)
        case CGSize(width: 390, height: 844):
            return setWidgetSize(widgetFamily: widgetFamily, width: 338, largeHeight: 354, mediumHeight: 158)
        case CGSize(width: 375, height: 812), CGSize(width: 360, height: 780):
            return setWidgetSize(widgetFamily: widgetFamily, width: 329, largeHeight: 345, mediumHeight: 155)
        case CGSize(width: 375, height: 667):
            return setWidgetSize(widgetFamily: widgetFamily, width: 321, largeHeight: 324, mediumHeight: 148)
        case CGSize(width: 320, height: 568):
            return setWidgetSize(widgetFamily: widgetFamily, width: 292, largeHeight: 311, mediumHeight: 141)
        default:
            return setWidgetSize(widgetFamily: widgetFamily, width: 338, largeHeight: 376, mediumHeight: 150)
        }
    }
    
    private static func setWidgetSize(widgetFamily: WidgetFamily, width: Double, largeHeight: Double, mediumHeight: Double) -> CGSize {
        let height = widgetFamily == .systemLarge ? largeHeight : mediumHeight
        return CGSize(width: width, height: height)
    }
}
