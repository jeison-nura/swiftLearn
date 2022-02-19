//
//  CardView.swift
//  practice
//
//  Created by Jeison Sierra on 7/02/22.
//

import SwiftUI

struct CardView: View{
    let card : MemoryGame<String>.Card
    var body: some View{
        ZStack{
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 3)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
            
        }
    }
}

