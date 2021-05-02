//
//  ViewController.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

enum CellType: String {
    case arrow
    case arrowWithTitle
    case `switch`
}

final class ViewController: UIViewController {
   

private let settings: [(title: String, type: CellType)] = [
    (title: "Авиарежим", type: .switch)
]

    lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.rowHeight = 44
        tableView.register(SettingsSwitchCell.self, forCellReuseIdentifier: CellType.switch.rawValue)
        tableView.dataSource = self
        tableView.separatorStyle = .none
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupHierarchy()
        setupLayout()
    }

    private func setupHierarchy() {
        view.addSubview(tableView)
    }

    private func setupLayout() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch settings[indexPath.row].type {
        case .switch:
            guard let cell = tableView.dequeueReusableCell(
                    withIdentifier: CellType.switch.rawValue, for: indexPath
            ) as? SettingsSwitchCell else { return UITableViewCell() }

            cell.setupView(with: "Авиарежим", and: UIImage(systemName: "airplane")!)
            return cell

        case .arrow:
            return UITableViewCell()
        case .arrowWithTitle:
            return UITableViewCell()
        }
    }
}
