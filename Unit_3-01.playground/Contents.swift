

// Created on: Sep 2017
// Created by: James Lee
// Created for: ICS3U
// This program plays rock paper scissors with the computer
// this will be commented out when code moved to Xcode

import PlaygroundSupport

// Import the library needed for the UI
import UIKit

// Make sure there are no constants

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    let number = 5
    var userPick = 0
    
    // properties
    var checkButton: UIButton!
    var numberTextfield: UITextField!
    var answerLabel: UILabel!
    var questionLabel : UILabel!
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        
        // Make background white
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        self.view = view
        
        // Code for textbox where you input the guess
        
        numberTextfield = UITextField()
        numberTextfield.placeholder = "Type guess here"
        numberTextfield.textColor = UIColor.black
        view.addSubview(numberTextfield)
        numberTextfield.translatesAutoresizingMaskIntoConstraints = false
        numberTextfield.topAnchor.constraint(equalTo: view.topAnchor, constant: 60).isActive = true
        numberTextfield.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // Code for the question asking your pick
        questionLabel = UILabel()
        questionLabel.text = "What do you pick?"
        view.addSubview(questionLabel)
        questionLabel.translatesAutoresizingMaskIntoConstraints = false
        questionLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        questionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        // Code for the label that shows the output once entered an input
        answerLabel = UILabel()
        answerLabel.text = ""
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
            
        // Checks to see if answer is right
        checkButton = UIButton()
        checkButton.setTitle("Check", for: .normal)
        checkButton.setTitleColor(.blue, for: .normal)
        checkButton.addTarget(self, action: #selector(checkNumber), for: .touchUpInside)
        view.addSubview(checkButton)
        checkButton.translatesAutoresizingMaskIntoConstraints = false
        checkButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        checkButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    @objc func checkNumber() {
        // Happens when the button is clicked
        
        let numberTextfield = self.numberTextfield.text
        
        userPick = Int(numberTextfield!)!
        
        if userPick == number {
            answerLabel.text = "Yes, it is right!"
        }
        
        else {
            answerLabel.text = "No it is not right"
        }
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

