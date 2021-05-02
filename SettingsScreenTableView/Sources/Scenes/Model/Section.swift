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
            SettingsLine(icone: UIImage(systemName: "airplane"), title: "Авиарежим", iconeBackgrounColor: .systemOrange, handler: {

            }, type: .switch),
            SettingsLine(icone: UIImage(systemName: "wifi"), title: "Wi-Fi", iconeBackgrounColor: .link, handler: {

            }, type: .arrowWithTitle)
           ]),
            Section(title: " ", options: [
                SettingsLine(icone: UIImage(systemName: "note"), title: "Уведомления", iconeBackgrounColor: .systemRed, handler: {

                }, type: .arrow),
                SettingsLine(icone: UIImage(systemName: "speaker.wave.3"), title: "Звуки, тактильные сигналы", iconeBackgrounColor: .systemRed, handler: {
                    
                }, type: .arrow)
            ])
        ]
    }
}
