//
//  AddTaskController.swift
//  TodoApp
//
//  Created by Anthony Ho on 19/10/2018.
//  Copyright © 2018 Anthony Ho. All rights reserved.
//

import UIKit

protocol AddTask {
    func addTask(name: String)
}

class AddTaskController: UIViewController {

    @IBOutlet weak var taskNameText: UITextField!
    
    @IBAction func addTask(_ sender: UIButton) {
        if taskNameText.text != "" {
            delegate?.addTask(name: taskNameText.text!)
            navigationController?.popViewController(animated: true)
        }
    }
    
    var delegate: AddTask?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
