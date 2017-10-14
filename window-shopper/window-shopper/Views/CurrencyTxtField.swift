//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Xantes Fabela on 10/13/17.
//  Copyright © 2017 Xantes Fabela. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.7196066228, green: 0.7196066228, blue: 0.7196066228, alpha: 0.8014233733)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
       super.awakeFromNib()
        customizeView()
    }
    
    
func customizeView() {
    backgroundColor = #colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 0.2493311216)
    layer.cornerRadius = 5.0
    textAlignment = .center
    
    clipsToBounds = true
    
    
    if let p = placeholder {
        let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
}
}
