//
//  CardView.swift
//  randomox
//
//  Created by 이승준 on 10/06/2019.
//  Copyright © 2019 Eseungjun. All rights reserved.
//

import UIKit

@IBDesignable class CardView: UIView {

    @IBInspectable var connerRaduis: CGFloat = 2
    
    @IBInspectable var shadowOffSetWidth: CGFloat = 0
    
    @IBInspectable var shadowOffSetHeight: CGFloat = 5
    
    @IBInspectable var shadowColor: UIColor = UIColor.black
    
    @IBInspectable var shadowOpacity: CGFloat = 0.5
    
    
    
    override func layoutSubviews(){
        
        layer.cornerRadius = connerRaduis
        
        layer.shadowColor = shadowColor.cgColor
        
        layer.shadowOffset = CGSize(width: shadowOffSetWidth, height: shadowOffSetHeight)
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: connerRaduis)
        
        layer.shadowPath = shadowPath.cgPath
        
        layer.shadowOpacity = Float(shadowOpacity)
    }

}
