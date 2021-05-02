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
    let iconeBackgrounColor: UIColor
    let handler: (() -> Void)

    var type: CellType

    typealias Line = (UIImage?, String)

    var line: Line {
        (icone, title)
    }
}
