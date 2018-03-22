//
//  GuessViewController.swift
//  Trivia game
//
//  Created by Kenny Tran on 3/19/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import UIKit

class GuessViewController: UIViewController {
    
 
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var addQuestionButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var answerButtonA: UIButton!
    @IBOutlet weak var answerButtonB: UIButton!
    @IBOutlet weak var answerButtonC: UIButton!
    @IBOutlet weak var answerButtonD: UIButton!
    
    var questionArray = [Question]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func loadQuestion() {
        let question1 = Question(questionText: "TEST", answers: ["test", "Test", "tEsT", "TEST"], correctAnswer: 3)
        questionArray.append(question1)
        let question2 = Question(questionText: "Who is the most subscribed channel on YouTube?", answers: ["mincraftkid22", "PewDiePie", "Smosh", "Logan Paul Vlogs"], correctAnswer: 1)
        questionArray.append(question2)
        let question3 = Question(questionText: "You know what time it is?", answers: ["No", "Like 4:30?", "Uhhhh...", "Go Away"], correctAnswer: 3)
        questionArray.append(question3)
    }
    
    func createQuestion() {
        let randomQuestion = Int(arc4random_uniform(UInt32(questionArray.count)))
    }
    
    
    
    @IBAction func resetButtonTapped(_ sender: Any) {
    }
    
    @IBAction func answerButtonTapped(_ sender: Any) {
        let button = sender as! UIButton
        print(button.tag)
        
        }
    }



