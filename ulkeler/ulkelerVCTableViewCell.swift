//
//  ulkelerVCTableViewCell.swift
//  ulkeler
//
//  Created by Ertuğrul Kulaber on 5.11.2021.
//

import UIKit

class ulkelerVCTableViewCell: UITableViewCell {

    @IBOutlet weak var ulkelerLabel: UILabel!
    @IBOutlet weak var ulkelerİmage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
   
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

      
    }

}

