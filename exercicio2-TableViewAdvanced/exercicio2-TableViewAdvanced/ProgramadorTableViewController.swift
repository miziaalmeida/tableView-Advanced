//
//  ProgramadorTableViewController.swift
//  exercicio2-TableViewAdvanced
//
//  Created by Mizia Lima on 10/11/20.
//

import UIKit

class ProgramadorTableViewController: UITableViewController {
    
    var programmers = [Programador]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        programmers.append(Programador(name: "Mízia Lima", post: "Student iOS Mobile", photo: "mizia-photo"))
        programmers.append(Programador(name: "Judar Lima", post: "Lead Mobile Developer iOS", photo: "judar-photo"))
        tableView.reloadData()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return programmers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProgramadorTableViewCell", for: indexPath) as? ProgramadorTableViewCell
        else { return UITableViewCell() }
        cell.configureCell(programador: programmers[indexPath.row])
        
        return cell
    }
}
