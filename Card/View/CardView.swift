//
//  CardView.swift
//  Card
//
//  Created by Bowen, Isaac on 11/21/16.
//  Copyright © 2016 Bowen, Isaac. All rights reserved.
//

import UIKit

@IBDesignable class CardView : UIView
{
    internal var frontImage : UIImageView
    internal var backImage : UIImageView
    @IBInspectable internal var isFaceUp : Bool
    @IBInspectable internal var cornerCurve : CGFloat
    internal var bottomLable : UILabel
    internal var topLabel : UILabel
    
    init()
    {
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        cornerCurve = CGFloat()
        bottomLable = UILabel()
        topLabel = UILabel()
        super.init(frame: CGRect(x:0,y:0,width:400,height:800))
    }
    
    required init?(coder acoder:NSCoder)
    {
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        cornerCurve = CGFloat()
        bottomLable = UILabel()
        topLabel = UILabel()
        super.init(coder: acoder)
    }
}
