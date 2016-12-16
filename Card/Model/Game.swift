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
    fileprivate var discardDeck : PlayingCardDeck
    fileprivate var inPlayDeck : PlayingCardDeck
    fileprivate var handDeck : PlayingCardDeck
    fileprivate var gameDeck: PlayingCardDeck
    fileprivate var score : Int
    fileprivate var cardGameController: CardGameController!
    
    
    init(cardGameController: CardGameController)
    {
        self.cardGameController = cardGameController
        gameDeck = PlayingCardDeck()
        discardDeck = PlayingCardDeck()
        inPlayDeck = PlayingCardDeck()
        handDeck = PlayingCardDeck()
        score = 0
    }
    
    func startGame() -> Void
    {
        score = 0
    }
    
    func drawCard(){
        
        
    }
    
    func checkMatch() -> Bool
    {
        let cardsMatch : Bool
        if score >= 11
            {
                cardGameController.scoreCount.text = "You won!"
            }
        
        let playingCard1 = inPlayDeck.cards[0] as! PlayingCard
        let playingCard2 = inPlayDeck.cards[1] as! PlayingCard
        if(playingCard1.getRank() == playingCard2.getRank() || playingCard1.getSuit() == playingCard2.getSuit())
            {
                cardsMatch = true
                
            }else{
                cardsMatch = false
            }
        return cardsMatch
    }
    
}
