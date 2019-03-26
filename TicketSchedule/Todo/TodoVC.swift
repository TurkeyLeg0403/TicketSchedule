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
    
    var contents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.todoTable.delegate = self
        self.todoTable.dataSource = self
        // set identifier
        self.todoTable.register(UINib(nibName: "TodoTableCell", bundle: nil), forCellReuseIdentifier: "TodoTableCell")
    }
    
    @IBAction func cellAdd(_ sender: UIButton) {
        // add contents
        self.contents += [self.cellContentField.text!]
        self.todoTable.reloadData()
    }
}
