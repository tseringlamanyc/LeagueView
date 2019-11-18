//
//  DetailsViewController.swift
//  LeagueView
//
//  Created by Tsering Lama on 11/17/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    
    @IBOutlet weak var tableView2: UITableView!
    private var champSelect2 = [[Champion]]() {
        didSet {
            tableView2.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView2.dataSource = self
        loadData()
    }
    
    func loadData() {
        champSelect2 = Champion.seperateLanes()
    }
    
}

extension DetailsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return champSelect2[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChampCell", for: indexPath)
        let champ = champSelect2[indexPath.section][indexPath.row]
        cell.textLabel?.text = champ.name
        cell.detailTextLabel?.text = champ.nickname
        cell.imageView?.image = UIImage(named: "\(champ.thumbnailImageName)")
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return champSelect2.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Top"
        case 1:
            return "Jungle"
        case 2:
            return "Mid"
        case 3:
            return "Bot"
        case 4:
            return "Support"
        default:
            return "N/A"
        }
    }
}
