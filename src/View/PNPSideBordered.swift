//
//  PNPSideBordered.swift
//  UIComponents
//
//  Created by Hugh Bellamy on 14/06/2015.
//  Copyright (c) 2015 Hugh Bellamy. All rights reserved.
//
import UIKit

@IBDesignable
private class PNPSideBorderedView: UIView  {
    @IBInspectable private var borderWidth: CGFloat = 0
    @IBInspectable private var borderColor: UIColor = UIColor.black
    
    @IBInspectable private var showsTopBorder: Bool = false
    @IBInspectable private var showsBottomBorder: Bool = false
    @IBInspectable private var showsLeftBorder: Bool = false
    @IBInspectable private var showsRightBorder: Bool = false
    
    private override func awakeFromNib() {
        super.awakeFromNib()
        
        if (showsTopBorder || showsBottomBorder || showsLeftBorder || showsRightBorder) && borderWidth == 0 {
            borderWidth = 1
        }
        
        if showsTopBorder {
            pnpAddTopBorder(borderWidth, color: borderColor)
        }
        if showsBottomBorder {
            pnpAddBottomBorder(borderWidth, color: borderColor)
        }
        if showsLeftBorder {
            pnpAddLeftBorder(borderWidth, color: borderColor)
        }
        if showsRightBorder {
            pnpAddRightBorder(borderWidth, color: borderColor)
        }
    }
}

@IBDesignable
private class PhoneNumberPickerSideBorderedButton: UIButton  {
    @IBInspectable private var borderWidth: CGFloat = 0
    @IBInspectable private var borderColor: UIColor = UIColor.black
    
    @IBInspectable private var showsTopBorder: Bool = false
    @IBInspectable private var showsBottomBorder: Bool = false
    @IBInspectable private var showsLeftBorder: Bool = false
    @IBInspectable private var showsRightBorder: Bool = false
    
    private override func awakeFromNib() {
        super.awakeFromNib()
        
        if (showsTopBorder || showsBottomBorder || showsLeftBorder || showsRightBorder) && borderWidth == 0 {
            borderWidth = 1
        }
        
        if showsTopBorder {
            pnpAddTopBorder(borderWidth, color: borderColor)
        }
        if showsBottomBorder {
            pnpAddBottomBorder(borderWidth, color: borderColor)
        }
        if showsLeftBorder {
            pnpAddLeftBorder(borderWidth, color: borderColor)
        }
        if showsRightBorder {
            pnpAddRightBorder(borderWidth, color: borderColor)
        }
    }
}

private extension UIView {
    func pnpAddTopBorder(_ width: CGFloat, color: UIColor = UIColor.black) {
        pnpAddBorder(color, frame: CGRect(x: 0, y: 0, width: frame.width, height: width))
    }
    
    func pnpAddBottomBorder(_ width: CGFloat, color: UIColor = UIColor.black) {
        pnpAddBorder(color, frame: CGRect(x: 0, y: frame.height - width, width: frame.width, height: width))
    }
    
    func pnpAddLeftBorder(_ width: CGFloat, color: UIColor = UIColor.black) {
        pnpAddBorder(color, frame: CGRect(x: 0, y: 0, width: width, height: frame.height))
    }
    
    func pnpAddRightBorder(_ width: CGFloat, color: UIColor = UIColor.black) {
        pnpAddBorder(color, frame: CGRect(x: frame.width / 2 + 8, y: 0, width: width, height: frame.height))
    }
    
    private func pnpAddBorder(_ color: UIColor, frame: CGRect) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = frame
        
        layer.addSublayer(border)
        //layer.masksToBounds = true
    }
}
