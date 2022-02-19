//
//  MemoryGame.swift
//  practice
//
//  Created by Jeison Sierra on 11/02/22.
//

import Foundation

struct MemoryGame <CardContent>{
    private(set) var cards: Array<Card>
    
    func choose(card:Card){
        
    }
    
    init(numberOfPairOfCards: Int, createCardContent:(Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards{
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content))
            cards.append(Card(content: content))
        }
        
    }
    
    struct Card{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content:CardContent
    }
}


