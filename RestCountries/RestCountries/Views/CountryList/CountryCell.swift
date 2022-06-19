//
//  CountryCell.swift
//  RestCountries
//
//  Created by Daniel Dluznevskij on 2022-05-30.
//

import UIKit

class CountryCell: UITableViewCell {
    
    @IBOutlet weak var flag: UILabel!
    @IBOutlet weak var countryName: UILabel!
    @IBOutlet weak var flagEmoji: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
