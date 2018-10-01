//
//  ViewController.swift
//  Todoey
//
//  Created by Steve Richmond on 01/10/2018.
//  Copyright © 2018 Steve Richmond. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {

    let itemArray = ["Mow lawn", "Buy eggs", "Do post"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
}

