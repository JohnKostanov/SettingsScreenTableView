//
//  SettingsSwitchCell.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 2/5/21.
//

import UIKit

final class SettingsSwitchCell: SettingsCellTableView {
    
    private lazy var switchView = UISwitch()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(switchView)
    }

    override func setupLayout() {
        super.setupLayout()
        switchView.translatesAutoresizingMaskIntoConstraints = false
        switchView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        switchView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
