//
//  StoryBrain.swift
//  Destini
//
//  Created by Ildar Garifullin on 01/02/2023.
//

import Foundation
import UIKit

struct StoryBrain {
    let questions = [
        Story(
            t: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            ch1: "I'll hop in. Thanks for the help!",
            chD1: 2,
            ch2: "Better ask him if he's a murderer first.",
            chD2: 1
        ),
        Story(
            t: "He nods slowly, unfazed by the question.",
            ch1: "At least he's honest. I'll climb in.",
            chD1: 2,
            ch2: "Wait, I know how to change a tire.",
            chD2: 3
        ),
        Story(
            t: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            ch1: "I love Elton John! Hand him the cassette tape.",
            chD1: 5,
            ch2: "It's him or me! You take the knife and stab him.",
            chD2: 4
        ),
        Story(
            t: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            ch1: "The",
            chD1: 0,
            ch2: "End",
            chD2: 0
        ),
        Story(
            t: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            ch1: "The",
            chD1: 0,
            ch2: "End",
            chD2: 0
        ),
        Story(
            t: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            ch1: "The",
            chD1: 0,
            ch2: "End",
            chD2: 0
        )
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        // получаю ответ пользователя
        if userAnswer == questions[questionNumber].choice1 {
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
       return questions[questionNumber].title
    }
    
    func changeButtonTitle(_ choice1Button: UIButton, _ choice2Button: UIButton) {
        choice1Button.setTitle("\(questions[questionNumber].choice1)", for: .normal)
        choice2Button.setTitle("\(questions[questionNumber].choice2)", for: .normal)
    }
    
    mutating func nextText() {
        // проверка на количество элементов в массиве
        if questionNumber + 1 < questions.count {
            questionNumber = questionNumber + 1
        } else {
            questionNumber = 0
        }
    }
}
