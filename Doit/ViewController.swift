//
//  ViewController.swift
//  Doit
//
//  Created by JUSTIN MICHAEL BEUCK on 3/7/17.
//  Copyright © 2017 JustinCo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    var tasks : [Task] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tasks = makeTask()
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let task = tasks[indexPath.row]
        if task.important {
            cell.textLabel?.text = "❗️\(task.name)"
        } else {
            cell.textLabel?.text = task.name
        }
        
        return cell
    }
    
    func makeTask() -> [Task] {
        let task1 = Task()
        task1.name = "Walk the dog"
        task1.important = false
        
        let task2 = Task()
        task2.name = "trash"
        task2.important = false
        
        let task3 = Task()
        task3.name = "Mow the Lawn"
        task3.important = true
        
        return [task1, task2, task3]
    }

    @IBAction func addTask(_ sender: Any) {
        performSegue(withIdentifier: "addSegue", sender: nil)
    }

}

