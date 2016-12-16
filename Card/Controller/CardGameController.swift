//
//  CardGameController.swift
//  Card
//
//  Created by Bowen, Isaac on 10/27/16.
//  Copyright © 2016 Bowen, Isaac. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    fileprivate var game: Game!
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    @IBOutlet weak var scoreCount: UILabel!
    @IBOutlet weak var firstCard: UILabel!
    @IBOutlet weak var secondCard: UILabel!

    override func viewDidLoad() -> Void
    {
        self.game = Game(cardGameController: self)
    }
    
    @IBAction func ontBtnClick(sender: UIButton)
    {
        
        
    }
    
    
    //@IBAction func cardClick(sender: UIButton)
    //{
    //    clickCount += 1
    //    let content = "You clicked \(clickCount) times"
    //    if let currentCard = cardDeck.drawRandomCard() as? PlayingCard
    //    {
    //        cardButton.setTitle("\(currentCard.rank) \(currentCard.suit)", forState: UIControlState.Normal)
    //    }else{
    //        cardButton.setTitle("Deck Empty", forState: UIControlState.Normal)
    //    }
    //    cardLabel.text = content
    // }
}
