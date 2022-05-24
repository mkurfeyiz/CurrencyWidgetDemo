//
//  DividerView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import Foundation
import SwiftUI

struct DividerView: View {
    let mainWidth = DeviceType.widgetSize.width
    
    var body: some View {
        HStack {
            Spacer().frame(width: mainWidth / 45)
            Rectangle()
                .fill()
                .frame(height: mainWidth / 750)
                .foregroundColor(Color(hex: WidgetColors.dividerColor.rawValue)).opacity(1)
            Spacer().frame(width: mainWidth / 45)
        }
    }
}
