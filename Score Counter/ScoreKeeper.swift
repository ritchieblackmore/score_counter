//
//  ScoreKeeper.swift
//  Score Counter
//
//  Created by Mathias Johnsson on 2021-12-12.
//

import SwiftUI

class ScoreKeeper: ObservableObject {
    @Published var scores: [Int] = []
    @Published var score: Int = 0
}
