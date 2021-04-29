//
//  SettingsLine.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

struct SettingsLine {
    let title: String
    let icone: UIImage?
    let iconeBackgrounColor: UIColor
//    let handler: (() -> Void)
    var isOn: Bool?
}

struct Section {
    let title: String
    let options: SettingsLine
}
