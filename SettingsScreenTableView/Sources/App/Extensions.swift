//
//  Extensions.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

extension SettingsCellTableViewCell {
    func addSubviews(_ subviews: UIView...) {
            subviews.forEach { addSubview($0) }
        }
}
