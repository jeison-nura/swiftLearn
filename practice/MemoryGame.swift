//
//  MemoryGame.swift
//  practice
//
//  Created by Jeison Sierra on 11/02/22.
//

import Foundation

struct MemoryGame <CardContent>{
    private(set) var cards: Array<Card>
    
    mutating func choose(_ card: Card){
        let choosenIndex = selectCard(of: card)
        cards[choosenIndex].isFaceUp.toggle()
    }
    
    func selectCard(of card: Card) -> Int{
        for index in 0..<cards.count{
            if cards[index].id == card.id{
                return index
            }
        }
        return 0
    }
    
    init(numberOfPairOfCards: Int, createCardContent:(Int) -> CardContent){
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairOfCards{
            let content: CardContent = createCardContent(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        
    }
    
    struct Card: Identifiable{
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content:CardContent
        var id: Int
    }
}


