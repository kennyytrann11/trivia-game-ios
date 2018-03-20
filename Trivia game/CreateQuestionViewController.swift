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
    @IBOutlet weak var addAnswerATextField: UITextField!
    @IBOutlet weak var addAnswerBTextField: UITextField!
    @IBOutlet weak var addAnswerCTextField: UITextField!
    @IBOutlet weak var addAnswerDTextField: UITextField!
    @IBOutlet weak var correctAnswerSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func cancelButtonPressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    @IBAction func addButtonTapped(_ sender: Any) {
    }
    
    

}
