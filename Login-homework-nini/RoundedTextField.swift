//
//  RoundedTextField.swift
//  Login-homework-nini
//
//  Created by sok channy on 11/8/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedTextField : UITextField{
    @IBInspectable var CorderRaduis : CGFloat = 0 {
        didSet{
            self.layer.cornerRadius = CorderRaduis;
            self.layer.masksToBounds = CorderRaduis > 0
        }
    }
    @IBInspectable var BorderWidth : CGFloat = 0 {
        didSet{
            self.layer.borderWidth = BorderWidth
        }
    }
    @IBInspectable var BackroundColor : UIColor? {
        didSet{
            self.layer.backgroundColor = BackroundColor?.cgColor
        }
    }
    @IBInspectable var BorderColor : UIColor? {
        didSet{
            self.layer.borderColor = BorderColor?.cgColor
        }
    }
    @IBInspectable var PlaceHolerColor : UIColor? {
        didSet{
            let rawstring = attributedPlaceholder?.string != nil ? attributedPlaceholder!.string : ""
            let str = NSAttributedString(string: rawstring, attributes: [ NSForegroundColorAttributeName : PlaceHolerColor! ])
            self.attributedPlaceholder = str
        }
    }
    @IBInspectable var CursorColor : UIColor? {
        didSet{
            
        }
    }
}
