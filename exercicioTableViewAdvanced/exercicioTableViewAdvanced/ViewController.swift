//
//  ViewController.swift
//  exercicioTableViewAdvanced
//
//  Created by Mizia Lima on 10/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableViewDevelopers: UITableView!
    
    var devs = [Developer]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureArray()
        
        tableViewDevelopers.delegate = self
        tableViewDevelopers.dataSource = self
    }
    
    func configureArray() {
        devs.append(Developer(name: "Ada Lovelace", image: "AdaLovelace"))
        devs.append(Developer(name: "Grace Hopper", image: "GraceHopper"))
        devs.append(Developer(name: "Hedy Lamarr", image: "HedyLamarr"))
        devs.append(Developer(name: "Margareth Hamilton", image: "MargarethHamilton"))
        devs.append(Developer(name: "Mary Kenneth Keller", image: "MaryKennethKeller"))
        devs.append(Developer(name: "Radia Perlman", image: "RadiaPerlman"))
        tableViewDevelopers.reloadData()
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected: \(devs[indexPath.row].name)")
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        devs.remove(at: indexPath.row)
        tableView.reloadData()
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        devs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DevelopersTableViewCell", for: indexPath) as? DevelopersTableViewCell
        else { return UITableViewCell() }
        cell.configureCell(developer: devs[indexPath.row])
        return cell
    }
}
