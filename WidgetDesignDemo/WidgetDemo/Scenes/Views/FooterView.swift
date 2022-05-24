//
//  FooterView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct FooterView: View {
    let mainWidth = DeviceType.widgetSize.width
    
    let date: Date
    let dateFormatter = DateFormatter()
    
    var body: some View {
        VStack {
            Text("Last Update: \(self.formatText(for: date))")
                .italic()
                .font(.system(size: mainWidth / 36, weight: .light, design: .default))
                .foregroundColor(Color("widgetLightTextColor"))
                .frame(height: mainWidth / 18)
        }
    }
    
    func formatText(for date: Date) -> String {
        dateFormatter.dateStyle = .full
        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
        
        return dateFormatter.string(from: date)
    }
}
