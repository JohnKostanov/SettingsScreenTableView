//
//  SettingsArrowCell.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 2/5/21.
//

import UIKit

class SettingsArrowCell: SettingsCellTableView {
   
    lazy var labelArrow: UILabel = {
        let labelArrow = UILabel()
        labelArrow.text = "＞"
        labelArrow.textColor = .lightGray

        return labelArrow
    }()

    override func setupHierarchy() {
        super.setupHierarchy()
        addSubview(labelArrow)
    }

    override func setupLayout() {
        super.setupLayout()
        labelArrow.translatesAutoresizingMaskIntoConstraints = false
        labelArrow.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16).isActive = true
        labelArrow.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
}
