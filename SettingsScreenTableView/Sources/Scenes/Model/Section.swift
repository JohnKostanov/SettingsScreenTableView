//
//  Section.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 29/4/21.
//

import UIKit

struct Section {
    let title: String
    let options: [SettingsLine]
}

extension Section {
    static func getSettings() -> [Section] {
        return [
           Section(title: "1", options: [
            SettingsLine(icone: UIImage(systemName: "airplane"), title: "Авиярежим", iconeBackgrounColor: .systemOrange, isOn: false),
            SettingsLine(icone: UIImage(systemName: "wifi"), title: "Wi-Fi", iconeBackgrounColor: .link, isOn: nil)
           ]),
            Section(title: "2", options: [
                SettingsLine(icone: UIImage(systemName: "note"), title: "Уведомления", iconeBackgrounColor: .systemRed, isOn: nil),
                SettingsLine(icone: UIImage(systemName: "speaker.wave.3"), title: "Звуки, тактильные сигналы", iconeBackgrounColor: .systemRed, isOn: nil)
            ])
        ]
    }
}
