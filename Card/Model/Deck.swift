//
//  Deck.swift
//  Card
//
//  Created by Bowen, Isaac on 10/31/16.
//  Copyright © 2016 Bowen, Isaac. All rights reserved.
//

import Foundation

class Deck
{
    internal lazy var cards = [Card]()
    
    func shuffleDeck() -> Void
    {
        //Creates a temp deck to hold cards.
        var tempDeck = [Card]()
        
        //Repeat until no cards are left.
        while self.cards.count > 0
        {
            //Random number from one to the maximum cards in the current deck.
            let randomIndex = Int (arc4random() % (UInt32(cards.count)))
            
            //Removes the random card.
            let removedCard = cards.remove(at: randomIndex)
            
            //Places the random card in the temporary deck.
            tempDeck.append(removedCard)
            
        }
        
        //Replace the data member with the updated data.
        self.cards = tempDeck
        
    }
    
    func cutDeck() -> Void
    {
        
    }
    
    func drawCard() -> Card?
    {
        if cards.count > 0
        {
            return cards.remove(at: 0)
        }
        else
        {
            return nil
        }
    }
    
    func drawRandomCard() -> Card!
    {
        if cards.count > 0
        {
            let randomIndex = Int (arc4random() % (UInt32)(cards.count))
            return cards.remove(at: randomIndex)
        }else{
            return nil
        }
    }
}
