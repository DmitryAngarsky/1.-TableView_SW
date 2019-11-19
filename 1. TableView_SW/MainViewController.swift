//
//  MainViewController.swift
//  1. TableView_SW
//
//  Created by Дмитрий Тараканов on 16.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import UIKit

class MainViewController: UITableViewController {
    
    let cellIdentifier  = "Cell"
    let restorauntNames = ["Балкан Гриль", "Бочка", "Вкусные истории", "Дастархан", "Индокитай",
                           "Классик", "Шок", "Bonsai", "Burger Heroes", "Kitchen",
                           "Love&Life", "Morris Pub", "Sherlock Holmes", "Speak Easy", "X.O"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return restorauntNames.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.textLabel?.text = restorauntNames[indexPath.row]
        cell.imageView?.image = UIImage(named: restorauntNames[indexPath.row])
        cell.imageView?.layer.cornerRadius = cell.frame.size.height / 3
        cell.imageView?.clipsToBounds = true
        
        return cell
    }
    
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
