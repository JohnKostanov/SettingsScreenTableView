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
           Section(title: " ", options: [
            SettingsLine(icone: UIImage(systemName: "airplane"), title: "Авиарежим", iconeBackgrounColor: .systemOrange, detailLabel: nil, type: .switch),
            SettingsLine(icone: UIImage(systemName: "wifi"), title: "Wi-Fi", iconeBackgrounColor: .link, detailLabel: "Не подключено", type: .arrowWithTitle)
           ]),
            Section(title: " ", options: [
                SettingsLine(icone: UIImage(systemName: "note"), title: "Уведомления", iconeBackgrounColor: .systemRed, detailLabel: nil, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "speaker.wave.3"), title: "Звуки, тактильные сигналы", iconeBackgrounColor: .systemRed, detailLabel: nil, type: .arrow)
            ])
        ]
    }
}
