//
//  EmojiMemoriGame.swift
//  practice
//
//  Created by Jeison Sierra on 11/02/22.
//

import SwiftUI


class EmojiMemoriGame : ObservableObject{
    static var emojis = ["🛩","🚂","🏍","🚤"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairOfCards: 4) {pairIndex in emojis[pairIndex]}
    }
        
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }
}
