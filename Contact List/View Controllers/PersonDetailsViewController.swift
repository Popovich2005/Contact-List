//
//  ViewController.swift
//  Contact List
//
//  Created by Алексей Попов on 27.02.2024.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(String(person.persons.phone))"
        emailLabel.text = "Email: \(person.persons.email)"
    }
}

