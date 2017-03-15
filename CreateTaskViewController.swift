//
//  CreateTaskViewController.swift
//  Doit
//
//  Created by JUSTIN MICHAEL BEUCK on 3/7/17.
//  Copyright © 2017 JustinCo. All rights reserved.
//

import UIKit

class CreateTaskViewController: UIViewController {

    @IBOutlet var taskNameTextField: UITextField!
    @IBOutlet var importantSwitch: UISwitch!
    
    var previousVC = TasksViewController()
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let task = Task()
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        
        // Add new task to array in previous viewController
        
        previousVC.tasks.append(task)
        previousVC.tableView.reloadData()
        navigationController!.popViewController(animated: true)
    }





}
