//
//  DiaryCell.swift
//  5.DiaryProject
//
//  Created by 정재 on 2022/09/06.
//

import UIKit

class DiaryCell: UICollectionViewCell {
    
    @IBOutlet var titleLable: UILabel!
    @IBOutlet var dateLable: UILabel!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.contentView.layer.cornerRadius = 3.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.black.cgColor
    }
    
}
