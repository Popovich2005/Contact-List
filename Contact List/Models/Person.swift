//
//  Person.swift
//  Contact List
//
//  Created by Алексей Попов on 27.02.2024.
//


struct Person {
    let persons: [DataStore]
    
    static func getPersons() -> [Person] {
        let shuffledNames = names.shuffled()
        let shuffledSurnames = surnames.shuffled()
        let shuffledEmails = emails.shuffled()
        let shuffledPhones = phones.shuffled()
        
        var contacts: [Person] = []
        
        for index in 0..<shuffledNames.count {
            let randomPerson = DataStore(
                name: shuffledNames[index],
                surname: shuffledSurnames[index],
                email: shuffledEmails[index],
                phone: shuffledPhones[index]
            )
            let person = Person(persons: [randomPerson])
            contacts.append(person)
        }
        return contacts
    }    
}



