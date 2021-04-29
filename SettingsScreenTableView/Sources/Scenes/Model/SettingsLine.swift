//
//  SettingsLine.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

struct SettingsLine {
    let icone: UIImage?
    let title: String
//    let iconeBackgrounColor: UIColor
//    let handler: (() -> Void)
    var isOn: Bool?

    typealias Line = (UIImage?, String, Bool?)

    var line: Line {
        (icone, title, isOn)
    }
}
