//
//  ShortcutListView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct ShortcutListView: View {
    let mainWidth = DeviceType.widgetSize.width
    
    var shortcutData: [ShortcutModel] = [
        ShortcutModel(title: "Home", image: "homekit"),
        ShortcutModel(title: "Favorites", image: "heart"),
        ShortcutModel(title: "Search", image: "magnifyingglass"),
        ShortcutModel(title: "Invitations", image: "square.and.arrow.down")
    ]
    
    var body: some View {
        VStack() {
            HStack {
                HStack(spacing: mainWidth / 9) {
                    ForEach(shortcutData) { shortcut in
                        ShortcutView(shortcut: shortcut)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}
