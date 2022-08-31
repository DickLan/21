//
//  ImageButton.swift
//  21
//
//  Created by 藍千文 on 2022/8/14.
//

import Foundation
import UIKit

class Imagebutton:UIButton{
    required init?(coder:NSCoder) {
        super.init(coder: coder)
        
        configurationUpdateHandler = { button in
            button.alpha = button.isHighlighted ? 0.5:1
        }
        
    }
    
}
