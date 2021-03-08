//
//  AdditionalTableViewCell.swift
//  Soyeon
//
//  Created by 이재은 on 2021/03/08.
//  Copyright © 2021 ludus. All rights reserved.
//

import UIKit

final class AdditionalTableViewCell: UITableViewCell {
    
    // Mark: - IBOutlet
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var nextButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell() {
        titleLabel.text = "" 
    }
    
}
