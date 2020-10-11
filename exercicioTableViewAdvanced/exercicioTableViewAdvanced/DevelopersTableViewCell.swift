//
//  DevelopersTableViewCell.swift
//  exercicioTableViewAdvanced
//
//  Created by Mizia Lima on 10/11/20.
//

import UIKit

class DevelopersTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imagePhoto: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    func configureCell(developer: Developer) {
        nameLabel.text = developer.name
        imagePhoto.image = UIImage(named: developer.image)
    }
}
