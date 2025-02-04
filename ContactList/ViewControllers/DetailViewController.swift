//
//  DetailViewController.swift
//  ContactList
//
//  Created by Igor Guryan on 04.02.2025.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = person.fullName
        phoneLabel.text = "Phone: \(person.phoneNumber)"
        emailLabel.text = "e-mail: \(person.email)"
        
    }
}
