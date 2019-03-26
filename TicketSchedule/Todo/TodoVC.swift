//
//  TodoVC.swift
//  TicketSchedule
//
//  Created by Takaki Otsu on 2019/03/26.
//  Copyright © 2019 Takaki Otsu. All rights reserved.
//

import UIKit

class TodoVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var todoTable: UITableView!
    let titleList = ["おひつじ座", "おうし座", "ふたご座", "かに座", "しし座",
                     "おとめ座", "てんびん座", "さそり座", "いて座", "やぎ座",
                     "みずがめ座", "うお座"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.todoTable.delegate = self
        self.todoTable.dataSource = self
        // set identifier
        self.todoTable.register(UINib(nibName: "TodoTableCell", bundle: nil), forCellReuseIdentifier: "TodoTableCell")
    }
    
    // section count
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    // cell count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.titleList.count
    }
    
    // cell contents
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set cell informations
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableCell") as! TodoTableCell
        cell.content.text = self.titleList[indexPath.row]
        return cell
    }
    
    //tap to the cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
