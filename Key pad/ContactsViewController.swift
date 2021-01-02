//
//  ContactsViewController.swift
//  Key pad
//
//  Created by James S on 26/12/2563 BE.
//

import UIKit

class Contact {
    var alphabet: String?
    var names: [String]?
    
    init(alphabet: String, names: [String]) {
        self.alphabet = alphabet
        self.names = names
    }
}

struct Profile: Hashable {
    let name: String
    let decription: String
}

class ContactsViewController: UIViewController {
    
        @IBOutlet var tableView: UITableView!
        var contact = [Contact]()
//        var profileName = "James S"
    var profile = Profile(name: "James", decription: "S")
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            contactList()
        }
    
    private func contactList() {
        contact.append(Contact.init(alphabet: "", names: ["", "", ""]))
        contact.append(Contact.init(alphabet: "A", names: ["1A", "2A", "3A"]))
        contact.append(Contact.init(alphabet: "B", names: ["1B", "2B", "3B"]))
        contact.append(Contact.init(alphabet: "C", names: ["1C", "2C", "3C", "4C"]))
        contact.append(Contact.init(alphabet: "D", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "E", names: ["1E", "2E"]))
        contact.append(Contact.init(alphabet: "F", names: ["1F", "2F"]))
        contact.append(Contact.init(alphabet: "G", names: ["1G", "2G"]))
        contact.append(Contact.init(alphabet: "H", names: ["1H", "2H"]))
        contact.append(Contact.init(alphabet: "I", names: ["1M", "2M"]))
        contact.append(Contact.init(alphabet: "J", names: ["n", "2N"]))
        contact.append(Contact.init(alphabet: "K", names: ["1K", "2K"]))
        contact.append(Contact.init(alphabet: "L", names: ["1L", "2L"]))
        contact.append(Contact.init(alphabet: "M", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "N", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "O", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "Q", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "R", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "S", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "T", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "U", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "V", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "W", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "X", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "Y", names: ["1D", "2D"]))
        contact.append(Contact.init(alphabet: "Z", names: ["1D", "2D"]))
    }
}

extension ContactsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
            return contact.count
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            return 1
            
        default:
            return contact[section].names?.count ?? 0
            
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return ""
            
        default:
            return contact[section].alphabet
            
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "contact")!
            cell.textLabel?.text = "James S"
            cell.detailTextLabel?.text = "My Card"
            
            return cell
            
        default:
            let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
            cell.textLabel?.text = contact[indexPath.section].names?[index]
            
            return cell
        }
    }
}


