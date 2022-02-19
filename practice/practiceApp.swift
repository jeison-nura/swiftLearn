//
//  practiceApp.swift
//  practice
//
//  Created by Jeison Sierra on 6/02/22.
//

import SwiftUI

@main
struct practiceApp: App {
    let game = EmojiMemoriGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
