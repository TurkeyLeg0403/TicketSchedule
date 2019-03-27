//
//  TodoVC.swift
//  TicketSchedule
//
//  Created by Takaki Otsu on 2019/03/26.
//  Copyright © 2019 Takaki Otsu. All rights reserved.
//

import UIKit

class TodoVC: UIViewController {

    @IBOutlet weak var todoTable: UITableView!
    @IBOutlet weak var cellContentField: UITextField!
    @IBOutlet weak var cellAddBtn: UIButton!
    
    var contents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.todoTable.delegate = self
        self.todoTable.dataSource = self
        // set identifier to todoTable
        self.todoTable.register(UINib(nibName: "TodoTableCell", bundle: nil), forCellReuseIdentifier: "TodoTableCell")
        // set action to cellContentField
        self.cellContentField.delegate = self
        self.cellContentField.addTarget(self, action: #selector(self.textFieldDidChange(_:)),
                                        for: UIControl.Event.editingChanged)
    }
    
    @IBAction func cellAdd(_ sender: UIButton) {
        self.addCellContent()
        // close the keyboard
        self.cellContentField.endEditing(true)
    }
}
