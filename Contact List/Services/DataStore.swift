//
//  DataStore.swift
//  Contact List
//
//  Created by Алексей Попов on 27.02.2024.
//

final class DataStore {
    let name: String
    let surname: String
    let email: String
    let phone: Int
    
    init(name: String, surname: String, email: String, phone: Int) {
        self.name = name
        self.surname = surname
        self.email = email
        self.phone = phone
    }
}

let names = ["Tim", "Tom", "Sara", "Shon", "Anna"]
let surnames = ["Black", "Butler", "Murphy", "Pennyworth", "Jankin"]
let emails = ["21@com", "466@com", "7876@com", "91349@com","278347@com"]
let phones = [2323, 24545, 436565, 678678, 12347]
