//
//  SectionsViewController.swift
//  ContactList
//
//  Created by Igor Guryan on 04.02.2025.
//
import UIKit

final class SectionsViewController: UITableViewController {
    
    var contacts: [Person]!
    
    //MARK: - Sections Part
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    //MARK: - TableViewDataSource
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionsCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        
        switch indexPath.row {
        case 0:
            content.text = contact.phoneNumber
            content.image = UIImage(systemName: "phone")
        default:
            content.text = contact.email
            content.image = UIImage(systemName: "tray")
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
