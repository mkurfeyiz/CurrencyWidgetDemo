//
//  ContentView.swift
//  WidgetDesignDemo
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.indigo
            VStack {
                Text("This is a demo application for Currency Widgets")
                    .foregroundColor(Color.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//// MARK: - Enums
//
//enum WidgetConstants {
//    static let backgroundColor = "#10203C"
//    static let fffColor = "#FFFFFF"
//    static let grayColor = "#EBEBF5"
//    static let dividerColor = "#A0A8B2"
//    static let sfRegularFont = "SFProText-Regular"
//}
//
//// MARK: - Models and Extensions
//struct Doviz: Identifiable {
//    let image: String
//    let name: String
//    let alis: Double
//    let satis: Double
//    var id: String {
//        name
//    }
//}
//
////extension Doviz: Identifiable {
////    var id: String {
////        name
////    }
////}
//
//struct Shortcut: Identifiable {
//    let title: String
//    let image: String
//    var id: String {
//        title
//    }
//}
//
//public func getDeviceWidgetSize(widgetFamily: WidgetFamily) -> CGSize {
//    switch UIScreen.main.bounds.size {
//    case CGSize(width: 428, height: 926):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 364, largeHeight: 382, mediumHeight: 170)
//    case CGSize(width: 414, height: 896):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 360, largeHeight: 379, mediumHeight: 169)
//    case CGSize(width: 414, height: 736):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 348, largeHeight: 357, mediumHeight: 157)
//    case CGSize(width: 390, height: 844):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 338, largeHeight: 354, mediumHeight: 158)
//    case CGSize(width: 375, height: 812), CGSize(width: 360, height: 780):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 329, largeHeight: 345, mediumHeight: 155)
//    case CGSize(width: 375, height: 667):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 321, largeHeight: 324, mediumHeight: 148)
//    case CGSize(width: 320, height: 568):
//        return setWidgetSize(widgetFamily: widgetFamily, width: 292, largeHeight: 311, mediumHeight: 141)
//    default:
//        return setWidgetSize(widgetFamily: widgetFamily, width: 338, largeHeight: 376, mediumHeight: 150)
//    }
//}
//
//private func setWidgetSize(widgetFamily: WidgetFamily, width: Double, largeHeight: Double, mediumHeight: Double) -> CGSize {
//    let height = widgetFamily == .systemLarge ? largeHeight : (mediumHeight + 20)
//    return CGSize(width: width, height: height)
//}
//
//// 360 width - iphone 11
////var mainWidth = UIScreen.main.bounds.width - 28
//var mainWidth = getDeviceWidgetSize(widgetFamily: .systemLarge).width
//
//// MARK: - Main Content
//
//
//
//// MARK: - Başlıklar
//struct HeaderView: View {
//    var body: some View {
//        VStack {
//            Spacer().frame(height: mainWidth / 36)
//            HStack(alignment: .center) {
//                Spacer().frame(width: mainWidth / 36)
//                Image("appWidgetIcon")
//                Spacer().frame(width: mainWidth / 51.4)
//                Text("ŞEKER MOBİL")
//                    .setFont(font: WidgetConstants.sfRegularFont,
//                             size: mainWidth / 27.7,
//                             color: WidgetConstants.fffColor,
//                             opacity: 0.6)
//                Spacer()
//                Image(systemName: "chevron.down")
//                    .foregroundColor(Color(hex: "#EBEBF5"))
//                    .opacity(0.6)
//                Spacer().frame(width: mainWidth / 30)
//            }
//        }
//    }
//}
//
//struct DovizHeaderView: View {
//    var body: some View {
//        VStack(alignment: .leading) {
//            HStack() {
//                Spacer().frame(width: mainWidth / 21.17)
//                Text("Para Birimi")
//                    .setFont(font: WidgetConstants.sfRegularFont,
//                             size: mainWidth / 30,
//                             color: WidgetConstants.fffColor,
//                             opacity: 0.6)
//                    .frame(width: mainWidth / 5.9)
//                Spacer().frame(width: mainWidth / 5.6)
//                HStack {
//                    HStack {
//                        Text("Alış")
//                            .setFont(font: WidgetConstants.sfRegularFont,
//                                     size: mainWidth / 30,
//                                     color: WidgetConstants.fffColor,
//                                 opacity: 0.6)
//                    }
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    HStack {
//                        Text("Satış")
//                            .setFont(font: WidgetConstants.sfRegularFont,
//                                     size: mainWidth / 30,
//                                     color: WidgetConstants.fffColor,
//                                 opacity: 0.6)
//                    }
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                }
//                .frame(maxWidth: .infinity, alignment: .leading)
//                Spacer().frame(width: mainWidth / 18.9)
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
//    }
//}
//
//// MARK: - Kur Kısmı
//struct DovizView: View {
//
//    var currency: Doviz
//
//    var body: some View {
//
//        VStack {
//            HStack {
//                Spacer().frame(width: mainWidth / 18.9 )
//                Image(currency.image)
//                    .resizable()
//                    .frame(width: mainWidth / 15, height: mainWidth / 22.5)
//                Spacer().frame(width: mainWidth / 20)
//                Text(currency.name)
//                    .setFont(font: WidgetConstants.sfRegularFont,
//                             size: mainWidth / 22.5,
//                             color: WidgetConstants.fffColor,
//                             opacity: 1)
//                    .frame(width: mainWidth / 7.2, alignment: .leading)
//                Spacer().frame(width: mainWidth / 8.3)
//                HStack {
//                    HStack {
//                        Text("₺" + String(currency.alis.truncate(places: 4)))
//                            .setFont(font: WidgetConstants.sfRegularFont,
//                                     size: mainWidth / 25.7,
//                                     color: WidgetConstants.fffColor,
//                                 opacity: 1)
//                    }
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                    HStack {
//                        Text("₺" + String(currency.satis.truncate(places: 4)))
//                            .setFont(font: WidgetConstants.sfRegularFont,
//                                     size: mainWidth / 25.7,
//                                     color: WidgetConstants.fffColor,
//                                 opacity: 1)
//                    }
//                    .frame(maxWidth: .infinity, alignment: .trailing)
//                }
//                .frame(maxWidth: .infinity, alignment: .trailing)
//                Spacer().frame(width: mainWidth / 24)
//            }
//            .frame(maxWidth: .infinity, alignment: .leading)
//        }
//    }
//}
//
//struct DovizListView: View {
//
//    let dovizData: [Doviz] = [
//        Doviz(image: "unitedStates1", name: "USD", alis: 14.7689, satis: 14.5664),
//        Doviz(image: "europeanUnion", name: "EUR", alis: 534.7869, satis: 532.9865),
//        Doviz(image: "goldWidgetIcon", name: "ALTIN", alis: 1916.2768, satis: 1916.0123)
//    ]
//
//    var body: some View {
//        VStack(alignment: .leading) {
//            ForEach(dovizData) { currency in
//                DovizView(currency: currency)
//                Spacer().frame(height: mainWidth / 22.5)
//            }
//        }
//    }
//}
//
//// MARK: - Shortcutlar
//struct ShortcutView: View {
//    var shortcut: Shortcut
//
//    var body: some View {
//
//        VStack {
//            Button {
//                handleShortcutAction(for: shortcut)
//            } label: {
//                VStack {
//                    Image(shortcut.image)
//                        .resizable()
//                        .frame(width: mainWidth / 7.5, height: mainWidth / 7.5)
//                    Spacer().frame(height: mainWidth / 60)
//                    Text(shortcut.title)
//                        .setFont(font: WidgetConstants.sfRegularFont,
//                                 size: mainWidth / 36,
//                                 color: WidgetConstants.fffColor,
//                                 opacity: 1)
//                }
//            }
//        }
//    }
//
//    func handleShortcutAction(for shortcut: Shortcut) {
//        print("Shortcut \(shortcut.title) handled")
//    }
//}
//
//struct ShortcutListView: View {
//    var shortcutData: [Shortcut] = [
//        Shortcut(title: "Hesaplarım", image: "accountsWidgetIcon"),
//        Shortcut(title: "Kartlarım", image: "cardsWidgetIcon2"),
//        Shortcut(title: "Transferler", image: "transfersWidgetIcon"),
//        Shortcut(title: "Ödemeler", image: "paymentsWidgetIcon2")
//    ]
//
//    var body: some View {
//        VStack() {
//            HStack {
//                // 321 / 9 guzel
//                HStack(spacing: mainWidth / 9) {
//                    ForEach(shortcutData) { shortcut in
//                        ShortcutView(shortcut: shortcut)
//                    }
//                }
//            }
//            .frame(maxWidth: .infinity)
//        }
//    }
//}
//
//// MARK: - Footer View
//struct FooterView: View {
//    let date: Date
//    let dateFormatter = DateFormatter()
//
//    var body: some View {
//        VStack {
//            Text("Son Güncelleme: \(self.formatText(for: date))")
//                .italic()
//                .font(.system(size: mainWidth / 36, weight: .light, design: .default))
//                .foregroundColor(Color("widgetLightTextColor"))
//                .frame(height: mainWidth / 18)
//        }
//    }
//
//    func formatText(for date: Date) -> String {
//        dateFormatter.dateStyle = .full
//        dateFormatter.dateFormat = "dd.MM.yyyy HH:mm"
//
//        return dateFormatter.string(from: date)
//    }
//}
//
//struct DividerView: View {
//    var body: some View {
//        HStack {
//            Spacer().frame(width: mainWidth / 45)
//            Rectangle()
//                .fill()
//                .frame(height: mainWidth / 750)
//                .foregroundColor(Color("widgetDividerColor")).opacity(1)
//            Spacer().frame(width: mainWidth / 45)
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//// MARK: - Extensions
//
//// Helps to use hex codes with Colors
//extension Color {
//    init(hex: String) {
//        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
//        var int: UInt64 = 0
//        Scanner(string: hex).scanHexInt64(&int)
//        let a, r, g, b: UInt64
//        switch hex.count {
//        case 3: // RGB (12-bit)
//            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
//        case 6: // RGB (24-bit)
//            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
//        case 8: // ARGB (32-bit)
//            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
//        default:
//            (a, r, g, b) = (1, 1, 1, 0)
//        }
//
//        self.init(
//            .sRGB,
//            red: Double(r) / 255,
//            green: Double(g) / 255,
//            blue:  Double(b) / 255,
//            opacity: Double(a) / 255
//        )
//    }
//}
//
//// Truncates double values with given number
//extension Double {
//    func truncate(places: Int)-> Double {
//        return Double(floor(pow(10.0, Double(places)) * self) / pow(10.0, Double(places)))
//    }
//}
