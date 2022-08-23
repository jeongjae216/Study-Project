//
//  RoundButton.swift
//  3.CalculatorsProject
//
//  Created by 정재 on 2022/08/23.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {
    

    @IBInspectable var isRound: Bool = false {
        
        didSet {
            if isRound {
                self.layer.cornerRadius = self.frame.height / 2
            }
        }
        
    }

    
}
