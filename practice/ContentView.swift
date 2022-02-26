//
//  ContentView.swift
//  practice
//
//  Created by Jeison Sierra on 6/02/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: EmojiMemoriGame
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(viewModel.cards) {card in
                        CardView(card: card).aspectRatio(2/3, contentMode: .fit).onTapGesture {
                            viewModel.choose(card)
                        }
                        
                    }
                }.padding(.horizontal)
            }.padding()
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoriGame()
        ContentView(viewModel: game)
    }
}
