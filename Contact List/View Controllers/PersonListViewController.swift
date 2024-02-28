//
//  PersonListViewController.swift
//  Contact List
//
//  Created by Алексей Попов on 27.02.2024.
//

import UIKit

final class PersonListViewController: UITableViewController {
    
    private let personList = Person.getPersons()
    
// MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let detailsVC = segue.destination as? PersonDetailsViewController
        detailsVC?.person = personList[indexPath.row]
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
        content.text = person.fullName
        cell.contentConfiguration = content
        
        return cell
    }
}

