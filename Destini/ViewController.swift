//
//  ViewController.swift
//  Destini
//
//  Created by Ildar Garifullin on 31/01/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyTextLabel: UILabel!
    
    @IBOutlet weak var choice1Button: UIButton!
    
    @IBOutlet weak var choice2Button: UIButton!
    
    let questions = [
        Story(
            title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            choice1: "I'll hop in. Thanks for the help!",
            choice1Destination: 2,
            choice2: "Better ask him if he's a murderer first.",
            choice2Destination: 1
        ),
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice1: "At least he's honest. I'll climb in.",
            choice1Destination: 2,
            choice2: "Wait, I know how to change a tire.",
            choice2Destination: 3
        ),
        Story(
            title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            choice1: "I love Elton John! Hand him the cassette tape.",
            choice1Destination: 5,
            choice2: "It's him or me! You take the knife and stab him.",
            choice2Destination: 4
        ),
        Story(
            title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        ),
        Story(
            title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        ),
        Story(
            title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice1: "The",
            choice1Destination: 0,
            choice2: "End",
            choice2Destination: 0
        )
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // какую кнопку нажал пользователь, получаю title
        let userAnswer = sender.currentTitle
        print(userAnswer)
        
        // получаю ответ пользователя
        let actualAnswer = questions[questionNumber].choice1
        
        // сравниваю ответ пользователя с ответом в массиве
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        // проверка на количество элементов в массиве
        if questionNumber + 1 < questions.count {
            questionNumber = questionNumber + 1
        } else {
            questionNumber = 0
        }
    
        updateUI()
    }
    
    func updateUI() {
        // обновляю данные в label
        storyTextLabel.text = questions[questionNumber].title
    }
}

