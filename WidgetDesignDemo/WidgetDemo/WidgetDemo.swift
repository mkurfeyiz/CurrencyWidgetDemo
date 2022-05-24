//
//  WidgetDemo.swift
//  WidgetDemo
//
//  Created by Muhammed Kurfeyiz on 24.05.2022.
//

import WidgetKit
import SwiftUI

struct Provider: TimelineProvider {
    
    let numbers = [
        14.8594098,
        245.463733,
        9.128087,
        5.0487,
        920.3348749,
        22.2830413,
        53.8575308,
        375.59844349]
    
    func placeholder(in context: Context) -> CurrencyEntry {
        CurrencyEntry(
            date: Date(),
            usd: CurrencyModel(
                image: "unitedStates1",
                name: "USD",
                purchase: 16.1780,
                sale: 15.9923),
            euro: CurrencyModel(
                image: "europeanUnion",
                name: "EUR",
                purchase: 17.2347,
                sale: 17.0067),
            gold: CurrencyModel(
                image: "-",
                name: "GOLD",
                purchase: 950.2986,
                sale: 945.5763))
    }

    func getSnapshot(in context: Context, completion: @escaping (CurrencyEntry) -> ()) {
        let entry = CurrencyEntry(
            date: Date(),
            usd: CurrencyModel(
                image: "unitedStates1",
                name: "USD",
                purchase: 16.1780,
                sale: 15.9923),
            euro: CurrencyModel(
                image: "europeanUnion",
                name: "EUR",
                purchase: 17.2347,
                sale: 17.0067),
            gold: CurrencyModel(
                image: "banknote",
                name: "GOLD",
                purchase: 950.2986,
                sale: 945.5763))
        completion(entry)
    }

    func getTimeline(in context: Context, completion: @escaping (Timeline<CurrencyEntry>) -> ()) {
        var entries: [CurrencyEntry] = []

        // Generate a timeline consisting of 3 entries 1 minutes apart, starting from the current date.
        let currentDate = Date()
        for minuteOffset in 0 ..< 3 {
            let entryDate = Calendar.current.date(byAdding: .minute, value: minuteOffset * 1, to: currentDate)!
            
            entries.append(
                CurrencyEntry(
                    date: entryDate,
                    usd: CurrencyModel(
                        image: "unitedStates1",
                        name: "USD",
                        purchase: getRandomValue(),
                        sale: getRandomValue()),
                    euro: CurrencyModel(
                        image: "europeanUnion",
                        name: "EUR",
                        purchase: getRandomValue(),
                        sale: getRandomValue()),
                    gold: CurrencyModel(
                        image: "-",
                        name: "GOLD",
                        purchase: getRandomValue(),
                        sale: getRandomValue())))
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
    
    private func getRandomValue() -> Double {
        return numbers[Int.random(in: 0...7)]
    }
}

struct CurrencyEntry: TimelineEntry {
    let date: Date
    let usd: CurrencyModel
    let euro: CurrencyModel
    let gold: CurrencyModel
}

@main
struct WidgetDemo: Widget {
    let kind: String = "WidgetDemo"

    var body: some WidgetConfiguration {
        StaticConfiguration(kind: kind, provider: Provider()) { entry in
            CurrencyWidgetEntryView(entry: entry)
        }
        .supportedFamilies([.systemMedium, .systemLarge])
        .configurationDisplayName("Currency Widget")
        .description("This is an example widget that displays info about currencies.")
    }
}
