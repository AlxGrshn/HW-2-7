//
//  WelcomeViewController.swift
//  HW-2-6
//
//  Created by Alexander Grishin on 01.10.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var userNameLabel: UILabel!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Welcome, \(userName)!"
    }
}
