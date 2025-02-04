//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Igor Guryan on 04.02.2025.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListViewController else { return }
        guard let sectionsVC = viewControllers?.last as? SectionsViewController else { return }
        
        let contacts = Person.generateContacts()
        contactListVC.contacts = contacts
        sectionsVC.contacts = contacts

    }
    
    
}

