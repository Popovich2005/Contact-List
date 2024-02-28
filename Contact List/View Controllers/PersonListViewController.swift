//
//  PersonListViewController.swift
//  Contact List
//
//  Created by Алексей Попов on 27.02.2024.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    private let personList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
// MARK: - Navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            
            let tabBarVC = segue.destination as? UITabBarController
            tabBarVC?.viewControllers?.forEach { viewController in
                if let detailsVC = viewController as? PersonDetailsViewController {
                    detailsVC.person = personList[indexPath.row]
                } else if let allInfoVC = viewController as? PersonsAllInfoViewController {
                    allInfoVC.person = personList[indexPath.row]
                }
            }
    }
}

// MARK: - UITableViewDataSours
extension PersonListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        personList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        let person = personList[indexPath.row]
        
        var content = cell.defaultContentConfiguration()
        content.text = "\(person.persons[0].name) \(person.persons[0].surname)"
        cell.contentConfiguration = content

        return cell
    }
}

