//
//  Game.swift
//  Card
//
//  Created by Bowen, Isaac on 11/11/16.
//  Copyright © 2016 Bowen, Isaac. All rights reserved.
//

import Foundation

class Game
{
    fileprivate var gameDeck : PlayingCardDeck
    fileprivate var score : Int
    fileprivate var cardGameController: CardGameController!
    
    
    init(cardGameController: CardGameController)
    {
        self.cardGameController = cardGameController
        gameDeck = PlayingCardDeck()
        score = 0
    }
    
    func startGame() -> Void
    {
        score = 0
        

    }
    
    func checkMatch() -> Bool
    {
        let cardsMatch : Bool
        if score => 11
        {
            cardGameController.scoreCount.text = "You won!"
        }
        if(hand[0].rank == hand[1].rank || hand[0].suit == hand[1].suit)
        {
            cardsMatch = true
        }else{
            cardsMatch = false
        }
        return cardsMatch
    }
    
    var hand = [PlayingCard]()
    
}
