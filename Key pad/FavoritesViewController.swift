//
//  FavoritesViewController.swift
//  Key pad
//
//  Created by James S on 23/12/2563 BE.
//

import UIKit

class FavoritesViewController: UIViewController {
    
    @IBOutlet weak var tvNames: UITableView!
    
    var names = ["P'Fair", "P'Michael", "P", "Great", "สวัสดีครับ"]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
        
    }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tvNames.setEditing(editing, animated: animated)
    }
   
}

extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let index = indexPath.row

//        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPerson")!
        cell.textLabel?.text = names[index]
        cell.detailTextLabel?.text = "mobile"

        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }

    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        if isEditing {
            return .delete
        } else {
            return .none
        }
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
           return true
       }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.beginUpdates()
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            tableView.endUpdates()

        }
    }
    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let index1 = sourceIndexPath.row
        let index2 = destinationIndexPath.row
        names.swapAt(index1, index2)
        print(names)
    }
}
