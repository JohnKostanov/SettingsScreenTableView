//
//  SettingsCellTableView.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

class SettingsCellTableView: UITableViewCell {

    static let identifier = "SettingsCell"

    private let iconeContainer: UIView = {
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.layer.masksToBounds = true
        return view
    }()

    private let icone: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    private let label: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews(label, iconeContainer, icone)
        contentView.clipsToBounds = true
        accessoryType = .disclosureIndicator

    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let size: CGFloat = contentView.frame.height - 12
        iconeContainer.frame = CGRect(x: 15, y: 6, width: size, height: size)

        let imageSize: CGFloat = size / 1.5
        icone.frame = CGRect(x: (size - imageSize) / 2, y: (size - imageSize) / 2, width: imageSize, height: imageSize)

        label.frame = CGRect(x: 25 + iconeContainer.frame.size.width, y: 0, width: contentView.frame.size.width - 20 - iconeContainer.frame.size.width, height: contentView.frame.size.width)
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        icone.image = nil
        label.text = nil
        iconeContainer.backgroundColor = nil
    }

    public func configure(with model: SettingsLine) {
        label.text = model.title
        icone.image = model.icone
//        iconeContainer.backgroundColor = model.iconeBackgrounColor

    }
}
