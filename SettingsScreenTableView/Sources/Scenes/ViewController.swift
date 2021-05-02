//
//  ViewController.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

class ViewController: UIViewController {

    var settings = Section.getSettings()

    lazy var tableView: UITableView = {
        var tableView = UITableView()
        tableView.rowHeight = 44
        tableView.register(SettingsCellTableView.self, forCellReuseIdentifier: "SettingsCell")
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

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let section = settings[section]
        return section.title
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        settings.count
    }
   
}

extension ViewController: UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        settings[section].options.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath) as? SettingsCellTableView else { return UITableViewCell() }
        
        let line = settings[indexPath.section].options[indexPath.row]

        cell.imageView?.image = line.icone
        cell.imageView?.tintColor = .white
        cell.imageView?.contentMode = .scaleAspectFit
        cell.imageView?.backgroundColor = line.iconeBackgrounColor
        cell.textLabel?.text = line.title
//        cell. = line.


        return cell
    }


}
