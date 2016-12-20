//
//  CustomeView.swift
//  Popup-Dialog
//
//  Created by sok channy on 11/10/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

import UIKit
@IBDesignable
class CustomView: UIView {
    @IBInspectable var BorderRaduis: CGFloat = 0.0 {
        didSet{
            //self.BorderRaduis = BorderRaduis
            self.layer.cornerRadius = BorderRaduis
        }
    }
}
