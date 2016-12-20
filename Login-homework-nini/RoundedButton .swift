//
//  RoundedButton .swift
//  Login-homework-nini
//
//  Created by sok channy on 11/8/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

import UIKit
@IBDesignable
class  RoundedButton : UIButton {
    @IBInspectable var BorderRaduis : CGFloat = 0 {
        didSet {
            self.layer.cornerRadius = BorderRaduis
        }
    }
    @IBInspectable var BorderColor : UIColor? {
        didSet {
            self.layer.borderColor = BorderColor?.cgColor
        }
    }
    @IBInspectable var BorderWidth: CGFloat = 0 {
        didSet {
            self.layer.borderWidth = BorderWidth
        }
    }
}
