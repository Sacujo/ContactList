//
//  DataStore.swift
//  ContactList
//
//  Created by Igor Guryan on 03.02.2025.
//

final class DataStore {
    
    static let shared = DataStore()
    
    private init() {}
    
    let lastNames = [
        "Smith",
        "Johnson",
        "Brown",
        "Williams",
        "Jones",
        "Davis",
        "Miller",
        "Wilson",
        "Moore",
        "Taylor"
    ]
    let firstNames = [
        "James",
        "John",
        "Robert",
        "Michael",
        "William",
        "David",
        "Richard",
        "Joseph",
        "Charles",
        "Thomas"
    ]
    let phoneNumbers = [
        "+1 202-555-0123",
        "+1 303-555-0456",
        "+1 404-555-0789",
        "+1 505-555-1011",
        "+1 606-555-1314",
        "+1 707-555-1617",
        "+1 808-555-1920",
        "+1 909-555-2223",
        "+1 101-555-2526",
        "+1 202-555-2829"
    ]
    
    let emails = [
        "alpha92@mail.com",
        "random.user99@gmail.com",
        "tech_geek47@yahoo.com",
        "sunny_day88@outlook.com",
        "fast.runner77@icloud.com",
        "coolguy1234@protonmail.com",
        "midnight.owl56@hotmail.com",
        "lucky7winner@zoho.com",
        "space_traveler01@gmx.com",
        "mystery.box42@aol.com"
    ]
}
