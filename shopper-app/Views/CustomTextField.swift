//
//  CustomTextField.swift
//  shopper-app
//
//  Created by Илья Груздев on 22.03.2021.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {

    override func prepareForInterfaceBuilder() {
            customazeView()
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customazeView()
    }
    
    func customazeView(){
        super.awakeFromNib()
        backgroundColor = #colorLiteral(red: 0.9999018312, green: 1, blue: 0.9998798966, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let p = placeholder{
        let place = NSAttributedString(string: p, attributes:  [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
        
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}
