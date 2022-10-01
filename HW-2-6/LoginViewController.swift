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
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func logInButtonDidTapped() {
    }
    

    @IBAction func forgotUserNameButtonDidTapped() {
        let title = "Ooops!"
        let message = "Your name is Teacher 👨‍🏫"
        showAlert(with: title, and: message)
    }
    
    
    @IBAction func forgotPasswordButtonDidTapped() {
        let title = "Ooops!"
        let message = "Your password is Swift 🧐"
        showAlert(with: title, and: message)
    }
    
    private func showAlert(with title: String, and message: String)  {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
