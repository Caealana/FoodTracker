//
//  ViewController.swift
//  FoodTracker
//
//  Created by Sabrina R. Sayasith on 6/24/17.
//  Copyright © 2017 Sabrina R. Sayasith. All rights reserved.
//

import UIKit
class ViewController: UIViewController, UITextFieldDelegate {
    //MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Handle the text field’s user input through delegate callbacks.
        nameTextField.delegate = self
        //When a ViewController instance is loaded, it sets itself as the delegate of its nameTextField property.
    }
    
    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true //always want to respond to user pressing Return key
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //do something with the info entered into the text field
        mealNameLabel.text = textField.text
    }
    
    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}

