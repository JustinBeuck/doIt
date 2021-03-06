//
//  CompleteTaskViewController.swift
//  Doit
//
//  Created by JUSTIN MICHAEL BEUCK on 3/14/17.
//  Copyright © 2017 JustinCo. All rights reserved.
//

import UIKit

class CompleteTaskViewController: UIViewController {
    
   
    @IBOutlet var taskLabel: UILabel!
    var task : Task? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if task!.important {
            taskLabel?.text = "❗️\(task!.name!)"
        } else {
            taskLabel?.text = task!.name!
        }

    }

    @IBAction func completeTapped(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(task!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
        navigationController!.popViewController(animated: true)
    }

}
