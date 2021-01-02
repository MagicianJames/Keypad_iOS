//
//  RecentsViewController.swift
//  Key pad
//
//  Created by James S on 25/12/2563 BE.
//

import UIKit

class RecentsViewController: UIViewController {
    
    var names = ["P'Fair", "P'Michael", "P", "Great", "สวัสดีครับ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
}

extension RecentsViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row
        
//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        let cell = tableView.dequeueReusableCell(withIdentifier: "contact")!
        cell.textLabel?.text = names[index]
        cell.detailTextLabel?.text = "mobile"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
}
