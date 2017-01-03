//
//  UserCellTableViewCell.swift
//  DevChat2
//
//  Created by Thad Duval on 1/2/17.
//  Copyright © 2017 Thad Duval. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var firstNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setCheckmark(selected: false)
    }
    
    func updateUI(user: User) {
        firstNameLbl.text = user.firstName
    }

    func setCheckmark(selected: Bool) {
        let imageStr = selected ? "messageindicatorchecked1" : "messageindicator1";
    
        self.accessoryView = UIImageView(image: UIImage(named: imageStr))
    }

}
