//
//  FontTypes.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import Foundation

struct FontTypes {

    static let sfRegularFont = FontTypes(fontName: "SFProText-Regular")
    
    public var rawValue: String
    
    init(fontName: String) {
        self.rawValue = fontName
    }
}
