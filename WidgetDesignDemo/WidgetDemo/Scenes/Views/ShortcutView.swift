//
//  ShortcutView.swift
//  WidgetDemoExtension
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI

struct ShortcutView: View {
    let mainWidth = DeviceType.widgetSize.width
    var shortcut: ShortcutModel
    
    var body: some View {
        
        VStack {
            Link(destination: URL(
                string: "urlscheme://\(shortcut.title)")!) {
                    Button {
                        
                    } label: {
                        Image(systemName: shortcut.image)
                            .resizable()
                            .frame(width: mainWidth / 7.5, height: mainWidth / 7.5)
                            .foregroundColor(Color(hex: WidgetColors.textColor.rawValue))
                    }
                    
                    Text(shortcut.title)
                        .setFont(size: .smallSize, font: .sfRegularFont, color: .textColor)
            }
        }
    }
    
//    func setShortcutType(for shortcut: ShortcutUIModel) -> String {
//        var shortcutType: String?
//        switch shortcut.title {
//        case WidgetShortcutTitles.accounts:
//            shortcutType = WidgetShortcutTitles.actionAccounts
//        case WidgetShortcutTitles.cards:
//            shortcutType = WidgetShortcutTitles.actionCards
//        case WidgetShortcutTitles.transfers:
//            shortcutType = WidgetShortcutTitles.actionTransfers
//        case WidgetShortcutTitles.payments:
//            shortcutType = WidgetShortcutTitles.actionPayments
//        default:
//            break
//        }
//
//        return shortcutType ?? ""
//    }
    
    func handleShortcutAction(for shortcut: ShortcutModel) {
        print("Shortcut \(shortcut.title) clicked")
    }
}
