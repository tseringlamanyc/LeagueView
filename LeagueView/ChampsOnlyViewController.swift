//
//  ChampsOnlyViewController.swift
//  LeagueView
//
//  Created by Tsering Lama on 11/17/19.
//  Copyright © 2019 Tsering Lama. All rights reserved.
//

import UIKit

class ChampsOnlyViewController: UIViewController {
    
    @IBOutlet weak var tableView1: UITableView!
    
    private var champSelect = Champion.allChamps {
        didSet {
            tableView1.reloadData()
        }
    }
    
    private var olderChamp = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView1.dataSource = self
        sortData(true)
    }
    
    
    @IBAction func sort(_ sender: UIBarButtonItem) {
        olderChamp.toggle()
        sortData(olderChamp)
    }
    
    
    func sortData(_ olderChamp: Bool) {
        if olderChamp {
            champSelect.sorted { $0.releaseDate < $1.releaseDate }
            navigationItem.rightBarButtonItem?.title = "Newer Champ"
        }
        else {
            champSelect.sorted { $0.releaseDate > $1.releaseDate }
            navigationItem.rightBarButtonItem?.title = "Older Champ"
        }
    }
}

extension ChampsOnlyViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return champSelect.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChampCell", for: indexPath)
        let champs = champSelect[indexPath.row]
        cell.textLabel?.text = champs.name
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en")
        dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
        let dateAsString = dateFormatter.string(from: champs.releaseDate)
        cell.detailTextLabel?.text = dateAsString
        return cell
    }
}
