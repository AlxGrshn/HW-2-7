//
//  BioViewController.swift
//  HW-2-6
//
//  Created by Alexander Grishin on 05.10.2022.
//

import UIKit

class BioViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var familyNameLabel: UILabel!
    
    @IBOutlet var companyNameLabel: UILabel!
    @IBOutlet var companyTeamLabel: UILabel!
    @IBOutlet var companyRoleLabel: UILabel!
    
    private let personInfo = User.person
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userImage.image = UIImage(named: personInfo.photoURL)
        
        nameLabel.text = "Имя: \(User.person.name)"
        familyNameLabel.text = "Фамилия: \(User.person.familyName)"
        
        companyNameLabel.text = "Компания: \(User.person.companyName)"
        companyTeamLabel.text = "Отдел: \(User.person.companyTeam)"
        companyRoleLabel.text = "Должность: \(User.person.companyRole)"
    }

}
