//
//  MenuCell.swift
//  MenuTest
//
//  Created by Siddu Hallikeri on 26/05/21.
//

import UIKit

class MenuCell: UITableViewCell {

  @IBOutlet weak var txtLabel: UILabel!
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  static var identifier: String {
    return String(describing: self)
  }
  
  static var nib: UINib {
    return UINib(nibName: identifier, bundle: nil)
  }
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
