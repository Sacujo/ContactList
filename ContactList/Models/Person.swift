//
//  Contact.swift
//  ContactList
//
//  Created by Igor Guryan on 18.12.2024.
//

struct Person {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    static func generateContacts() -> [Person] {
        let dataStore = DataStore.shared
        
        let shuffledFirstNames = dataStore.firstNames.shuffled()
        let shuffledLastNames = dataStore.lastNames.shuffled()
        let shuffledPhoneNumbers = dataStore.phoneNumbers.shuffled()
        let shuffledEmails = dataStore.emails.shuffled()
        
        let count = min(shuffledFirstNames.count, shuffledLastNames.count, shuffledPhoneNumbers.count, shuffledEmails.count)
        
        var contacts: [Person] = []
        
        for index in 0..<count {
            let contact = Person(
                firstName: shuffledFirstNames[index],
                lastName: shuffledLastNames[index],
                phoneNumber: shuffledPhoneNumbers[index],
                email: shuffledEmails[index]
            )
            contacts.append(contact)
        }
        
        return contacts
    }
}

