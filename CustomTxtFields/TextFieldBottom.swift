//
//  TextFieldBottom.swift
//  CustomTxtFields
//
//  Created by Priya on 3/11/20.
//  Copyright © 2020 ZSL. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable class BorderTextField : UITextField {
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let border = CALayer()
        let borderWidth = CGFloat(2.0)
        border.borderColor = UIColor.purple.cgColor
        border.frame = CGRect(origin: CGPoint(x: 0,y :self.frame.size.height - borderWidth), size: CGSize(width: self.frame.size.width, height: self.frame.size.height))
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
}
