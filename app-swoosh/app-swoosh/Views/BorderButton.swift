//
//  BorderButton.swift
//  app-swoosh
//
//  Created by Hyeon Uk Jeong on 6/12/18.
//  Copyright © 2018 Hyeon Uk Jeong. All rights reserved.
//

import UIKit

class BorderButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 3.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
