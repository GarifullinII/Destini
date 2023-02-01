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
    
    var destiniBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        // какую кнопку нажал пользователь, получаю title
        guard let userAnswer = sender.currentTitle else {
            return
        }
        
        destiniBrain.nextText(userAnswer)
    
        updateUI()
    }
    
    func updateUI() {
        // обновляю данные в label
        storyTextLabel.text = destiniBrain.getQuestionText()
        
        choice1Button.setTitle(destiniBrain.getChoice1(), for: .normal)
        choice2Button.setTitle(destiniBrain.getChoice2(), for: .normal)
    }
}

