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
    var contents = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.todoTable.delegate = self
        self.todoTable.dataSource = self
        // set identifier
        self.todoTable.register(UINib(nibName: "TodoTableCell", bundle: nil), forCellReuseIdentifier: "TodoTableCell")
    }
    
    @IBAction func cellAdd(_ sender: UIBarButtonItem) {
        // add contents
        self.contents += ["TEST"]
        self.todoTable.reloadData()
    }
}
