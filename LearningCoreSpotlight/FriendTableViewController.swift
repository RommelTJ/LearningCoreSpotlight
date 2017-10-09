//
//  FriendTableViewController.swift
//  LearningCoreSpotlight
//
//  Created by Rommel Rico on 10/9/17.
//  Copyright © 2017 Rommel Rico. All rights reserved.
//

import UIKit

class FriendTableViewController: UITableViewController {
    
    let datasource = Datasource()
    var lastSelectedFriend: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.people.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friendCell", for: indexPath)
        
        let person = datasource.people[indexPath.row]
        cell.textLabel?.text = person.name

        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let selectedIndex = tableView.indexPathForSelectedRow?.row
        lastSelectedFriend = datasource.people[selectedIndex!]
        let destination = segue.destination as! FriendViewController
        destination.person = lastSelectedFriend
    }

}
