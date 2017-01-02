//
//  RoundTextField.swift
//  DevChat
//
//  Created by Thad Duval on 1/2/17.
//  Copyright © 2017 Thad Duval. All rights reserved.
//

import UIKit

@IBDesignable
class RoundTextField: UITextField {
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
            
        }
    }
    
    @IBInspectable public var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable public var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor? .cgColor
        }
    }
    
    @IBInspectable public var bgColor: UIColor? {
        didSet {
            backgroundColor = bgColor
        }
    }
    
    @IBInspectable public var placeholderColor: UIColor? {
        didSet {
            
            let rawString = attributedPlaceholder?.string != nil ? attributedPlaceholder!.string : ""
            let str = NSAttributedString(string: rawString, attributes: [NSForegroundColorAttributeName: placeholderColor!])
            
            self.attributedPlaceholder = str
        }
    }
    
}
