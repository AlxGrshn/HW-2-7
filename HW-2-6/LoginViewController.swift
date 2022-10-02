//
//  LoginViewController.swift
//  HW-2-6
//
//  Created by Alexander Grishin on 01.10.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "Teacher"
    private let password = "Swift"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = userNameTF.text
    }

    @IBAction func logInButtonDidTapped() {
        let title = "Invalid login or password"
        let message = "Please, enter correct login and password"
        
        if userNameTF.text == userName && passwordTF.text == password {
            return
        } else {
            showAlert(with: title, and: message)
        }
    }
    
    @IBAction func forgotUserNameButtonDidTapped() {
        let title = "Ooops!"
        let message = "Your name is \(userName)"
        showAlert(with: title, and: message)
    }
    
    @IBAction func forgotPasswordButtonDidTapped() {
        let title = "Ooops!"
        let message = "Your password is \(password)"
        showAlert(with: title, and: message)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    private func showAlert(with title: String, and message: String)  {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
