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
  
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    @IBAction func addTapped(_ sender: Any) {
        // Create a Task from the outlet information
        
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let task = Task(context: context)
        
        task.name = taskNameTextField.text!
        task.important = importantSwitch.isOn
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        // Pop back

        navigationController!.popViewController(animated: true)
    }





}
