//
//  ThemeTableViewCell.swift
//  StrenghtsHighlighter
//
//  Created by DAVID DAILEY on 3/12/17.
//  Copyright © 2017 davedailey. All rights reserved.
//

import UIKit

class ThemeTableViewCell: UITableViewCell {
    @IBOutlet weak var themeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func updateUI (theme: Theme) {
        themeLabel.text = theme.name
    }

}
