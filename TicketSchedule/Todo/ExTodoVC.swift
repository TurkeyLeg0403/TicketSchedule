//
//  ExTodo.swift
//  TicketSchedule
//
//  Created by Takaki Otsu on 2019/03/26.
//  Copyright © 2019 Takaki Otsu. All rights reserved.
//

import UIKit

//MARK: - TableView Conf
extension TodoVC: UITableViewDelegate, UITableViewDataSource {
    // section count
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // cell count
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.contents.count
    }
    
    // cell contents
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set cell informations
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoTableCell") as! TodoTableCell
        cell.content.text = self.contents[indexPath.row]
        return cell
    }
    
    //tap to the cell
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

//MARK: - cellContentField
extension TodoVC{
    @objc func textFieldDidChange(_ textField: UITextField) {
        self.cellAddBtn.isEnabled = !(cellContentField.text?.isEmpty ?? true)
    }
}
