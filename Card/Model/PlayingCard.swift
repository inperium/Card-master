//
//  PlayingCard.swift
//  Card
//
//  Created by Bowen, Isaac on 10/25/16.
//  Copyright © 2016 Bowen, Isaac. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    internal var suit : String
    internal var color : UIColor
    internal var rank : Int
    
    override init()
    {
        rank = 0
        suit = ""
        color = UIColor.red
        super.init()
    }
    
    init(withRank: Int, ofSuit:String)
    {
        color = UIColor.red
        suit = ofSuit
        rank = withRank
        super.init()
    }
    
    func getRank() -> Int
    {
        return rank
    }
    
    func getSuit() -> String
    {
        return suit
    }
    
    func getColor() -> UIColor
    {
        return UIColor()
    }
    
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks()[rank]) \(suit)"
    }
    
    override func toString() -> String
    {
        var backFlip = ""
        if super.isFacing()
        {
                backFlip = "face up"
        }
        else
        {
            backFlip = "face down"
        }
        let description = "The playing card rank is: \(rank), its suit is \(suit) and the color is \(color) and is \(backFlip)."
        
        return description
    }
    
    //The class modifier makes it so the methois visible with an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    class func validRanks() -> [String]
    {
        return ["??","A","1","2","3","4","5","6","7","8","9","10","J","Q","K"]
    }
    
    class func maxRank() -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♦️","♣️","♥️","♠️"]
    }
}









