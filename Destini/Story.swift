//
//  Story.swift
//  Destini
//
//  Created by Ildar Garifullin on 01/02/2023.
//

import Foundation

struct Story {
    let title: String
    let choice1: String
    let choice1Destination: Int
    let choice2: String
    let choice2Destination: Int
    
    init(t: String, ch1: String, chD1: Int, ch2: String, chD2: Int) {
        title = t
        choice1 = ch1
        choice1Destination = chD1
        choice2 = ch2
        choice2Destination = chD2
    }
}
