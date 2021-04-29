//
//  ViewController.swift
//  SettingsScreenTableView
//
//  Created by Джон Костанов on 28/4/21.
//

import UIKit

class ViewController: UIViewController {

    var settings = Section.getSettings()


    override func viewDidLoad() {
        super.viewDidLoad()

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
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
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
