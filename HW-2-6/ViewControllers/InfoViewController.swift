//
//  InfoViewController.swift
//  HW-2-6
//
//  Created by Alexander Grishin on 05.10.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet var infotextView: UITextView!
    
    private let personInfo = User.person
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infotextView.text = User.person.info
    }

}
