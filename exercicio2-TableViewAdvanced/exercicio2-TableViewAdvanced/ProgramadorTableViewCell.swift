//
//  ProgramadorTableViewCell.swift
//  exercicio2-TableViewAdvanced
//
//  Created by Mizia Lima on 10/11/20.
//

import UIKit

class ProgramadorTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configureCell(programador: Programador){
        nameLabel.text = programador.name
        postLabel.text = programador.post
        photoImageView.image = UIImage(named: programador.photo)
        photoImageView.roundedImage()
    }
}
extension UIImageView {
    func roundedImage() {
        self.layer.cornerRadius = (self.frame.size.width) / 2;
        self.clipsToBounds = true
        self.layer.borderWidth = 3.0
        self.layer.borderColor = UIColor.white.cgColor
    }
}
