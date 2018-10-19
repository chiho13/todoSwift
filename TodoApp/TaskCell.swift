//
//  TaskCell.swift
//  TodoApp
//
//  Created by Anthony Ho on 19/10/2018.
//  Copyright © 2018 Anthony Ho. All rights reserved.
//

import UIKit

protocol ChangeButton {
    func changeButton(isChecked: Bool, index: Int?)
}

class TaskCell: UITableViewCell {
    
    @IBAction func checkBoxAction(_ sender: Any) {
        if tasks![indexP!].checked {
            delegate?.changeButton(isChecked: false, index: indexP)
        } else {
            delegate?.changeButton(isChecked: true, index: indexP)
        }
    }
    @IBOutlet weak var checkBoxOutlet: UIButton!
    @IBOutlet weak var taskNameLabel: UILabel!
    
    var delegate: ChangeButton?
    var indexP: Int?
    var tasks: [Task]?
}
