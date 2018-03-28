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
    var colors = [#colorLiteral(red: 1, green: 0.6995142102, blue: 0.7895267606, alpha: 1), #colorLiteral(red: 0.9580202699, green: 0.9932716489, blue: 0.1603650749, alpha: 1), #colorLiteral(red: 0.4722986221, green: 0.1888953745, blue: 0.287584275, alpha: 1), #colorLiteral(red: 0.7939620018, green: 0.8378460407, blue: 0.9765736461, alpha: 1), #colorLiteral(red: 0.6966740489, green: 0.1364654303, blue: 0.1878539622, alpha: 1), #colorLiteral(red: 0.2641801536, green: 0.2609890103, blue: 0.3393939734, alpha: 1), #colorLiteral(red: 0.9472096562, green: 0.9511234164, blue: 0.8358669281, alpha: 1), #colorLiteral(red: 0.3517069221, green: 0.9111352563, blue: 0.5033376813, alpha: 1)]
    var score = 0
    var questionDisplay: Question?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addQuestionButton.layer.cornerRadius = 6
        addQuestionButton.clipsToBounds = true
        resetButton.layer.cornerRadius = 6
        resetButton.clipsToBounds = true
        answerButtonA.layer.cornerRadius = 6
        answerButtonA.clipsToBounds = true
        answerButtonB.layer.cornerRadius = 6
        answerButtonB.clipsToBounds = true
        answerButtonC.layer.cornerRadius = 6
        answerButtonC.clipsToBounds = true
        answerButtonD.layer.cornerRadius = 6
        answerButtonD.clipsToBounds = true
        loadQuestion()
        createQuestion()
        scoreLabel.text = "Score: \(score)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    func loadQuestion() {
        let question1 = Question(questionText: "TEST", answers: ["test", "Test", "tEsT", "TEST"], correctAnswer: 3)
        questionArray.append(question1)
        let question2 = Question(questionText: "Who is currently the most subscribed channel on YouTube?", answers: ["mincraftkid22", "PewDiePie", "Smosh", "Logan Paul Vlogs"], correctAnswer: 1)
        questionArray.append(question2)
        let question3 = Question(questionText: "You know what time it is?", answers: ["No", "Like 4:30?", "Uhhhh...", "Go Away"], correctAnswer: 3)
        questionArray.append(question3)
        let question4 = Question(questionText: "Omae wa mou shindeiru.", answers: ["NANI!?", "Nani?", "NANDA KOITSAWA!?", "HHNNNGGG"], correctAnswer: 1)
        questionArray.append(question4)
        let question5 = Question(questionText: "😂😂😂 OMG WHO DID THIS 😂😂😂", answers: ["👀🔥💯", "Literally dying", "LOL", "OMGLOLMAOROFLCOPTR"], correctAnswer: 0)
        questionArray.append(question5)
    }
    
    
    func createAnswers(question: Question, colorSelection: [UIColor]) {
        var colorArray = colorSelection
        var questionAnswers = question.answers
        for i in 0...3 {
            let randomAnswer = Int(arc4random_uniform(UInt32(questionAnswers.count)))
            let randomColor = Int(arc4random_uniform(UInt32(colorArray.count)))
            switch i {
            case 0 :
                answerButtonA.setTitle(questionAnswers[randomAnswer], for: .normal)
                answerButtonA.backgroundColor = colorArray[randomColor]
            case 1:
                answerButtonB.setTitle(questionAnswers[randomAnswer], for: .normal)
                answerButtonB.backgroundColor = colorArray[randomColor]
            case 2:
                answerButtonC.setTitle(questionAnswers[randomAnswer], for: .normal)
                answerButtonC.backgroundColor = colorArray[randomColor]
            case 3:
                answerButtonD.setTitle(questionAnswers[randomAnswer], for: .normal)
                answerButtonD.backgroundColor = colorArray[randomColor]
            default:
                return
            }
            questionAnswers.remove(at: randomAnswer)
            colorArray.remove(at: randomColor)
        }
    }
    
    func createQuestion() {
        let randomQuestion = Int(arc4random_uniform(UInt32(questionArray.count)))
        let currentQuestion = questionArray[randomQuestion]
        questionLabel.text = currentQuestion.questionText
        questionDisplay = currentQuestion
        createAnswers(question: currentQuestion, colorSelection: colors)
    }


    
    @IBAction func resetButtonTapped(_ sender: Any) {
        
    }
    
    @IBAction func answerButtonTapped(_ sender: Any) {
        let button = sender as! UIButton
        if button.title(for: .normal) == questionDisplay!.answers[(questionDisplay?.correctAnswer)!] {
            score += 1
            let alertView = UIAlertController(title: "Correct!", message: "You got the right answer!", preferredStyle: .alert)
            alertView.addAction(UIAlertAction(title: "Okay!", style: .default))
            self.present(alertView, animated: true, completion: nil)
            
        }
        if button.title(for: .normal) != questionDisplay!.answers[(questionDisplay?.correctAnswer)!] {
            let alertView2 = UIAlertController(title: "Wrong!", message: "The correct answer was \(String(describing: questionDisplay?.correctAnswer))", preferredStyle: .alert)
            alertView2.addAction(UIAlertAction(title: "Okay", style: .default))
            self.present(alertView2, animated: true, completion: nil)
        }
        
    }
    
    
    
    
    
    
}



