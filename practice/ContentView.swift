//
//  ContentView.swift
//  practice
//
//  Created by Jeison Sierra on 6/02/22.
//

import SwiftUI

struct ContentView: View {
    let viewModel: EmojiMemoriGame
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(viewModel.cards, id: \.self) {emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                        
                    }
                }
            }
            Spacer()
            HStack{
                add
                Spacer()
                remove
                
            }.padding(.horizontal)
        }.padding(.horizontal).foregroundColor(.red)
    }
    
    var add: some View{
        Button(action: {
            if emojiCount < emojies.count{
                emojiCount += 1
            }
        }, label: {
            VStack{
                Text("+")
            }
        }).font(.largeTitle)
    }
    var remove: some View{
        Button(action: {
            if emojiCount>1 {
                emojiCount -= 1
            }
        }, label: {
            VStack {
                Text("-").font(.largeTitle)
            }
        })
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    let game = EmojiMemoriGame()
    static var previews: some View {
        ContentView(viewModel: game)
    }
}
