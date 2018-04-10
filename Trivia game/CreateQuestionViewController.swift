//
//  CreateQuestionViewController.swift
//  Trivia game
//
//  Created by Kenny Tran on 3/19/18.
//  Copyright © 2018 Kenny Tran. All rights reserved.
//

import UIKit

class CreateQuestionViewController: UIViewController {
    
    @IBOutlet weak var addQuestionTextField: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var addQuestionButton: UIButton!
    @IBOutlet weak var addAnswerATextField: UITextField!
    @IBOutlet weak var addAnswerBTextField: UITextField!
    @IBOutlet weak var addAnswerCTextField: UITextField!
    @IBOutlet weak var addAnswerDTextField: UITextField!
    @IBOutlet weak var correctAnswerSegment: UISegmentedControl!
    
    var newQuestions: Question!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addQuestionButton.layer.cornerRadius = 6
        addQuestionButton.clipsToBounds = true
        cancelButton.layer.cornerRadius = 6
        cancelButton.clipsToBounds = true
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
        newQuestions = Question(questionText: addQuestionTextField.text! , answers: [addAnswerATextField.text!, addAnswerBTextField.text!, addAnswerCTextField.text!, addAnswerDTextField.text!], correctAnswer: correctAnswerSegment.selectedSegmentIndex)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "guessScreen") {
            let vc = segue.destination as! GuessViewController
            vc.questionArray.append(newQuestions)
        }
    }
}
