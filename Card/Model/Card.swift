//
//  Card.swift
//  Card
//
//  Created by Bowen, Isaac on 10/25/16.
//  Copyright © 2016 Bowen, Isaac. All rights reserved.
//  Created with help from Cody Hendrichsen
//
class Card
{
    internal var isFaceUp : Bool

    init()
    {
        isFaceUp = false
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func toString() -> String
    {
        let description = "This card is \(isFaceUp)."
        
        return description
    }
}