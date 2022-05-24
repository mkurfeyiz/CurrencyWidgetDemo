//
//  ShortcutModel.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct ShortcutModel: Identifiable {
    let title: String
    let image: String
    var id: String {
        title
    }
}
