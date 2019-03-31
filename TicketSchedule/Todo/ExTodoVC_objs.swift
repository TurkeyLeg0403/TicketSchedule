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
extension TodoVC: UITextFieldDelegate{
    @objc func textFieldDidChange(_ textField: UITextField) {
        self.cellAddBtn.isEnabled = !(cellContentField.text?.isEmpty ?? true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // close the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    // setup and defend to cover the keyboard to the textfield
}

//MARK: - keyboard hide options
extension TodoVC{
    @objc func keyboardWillShow(notification: NSNotification) {
        guard let userInfo = notification.userInfo else {return}
        guard let keyboardSize = userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue else {return}
        let keyboardFrame = keyboardSize.cgRectValue
        guard let tabBarHeight = self.tabBarController?.tabBar.frame.size.height else { return }
        if self.view.frame.origin.y == 0{
            self.view.frame.origin.y -= keyboardFrame.height - tabBarHeight
        }
        
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0{
            self.view.frame.origin.y = 0
        }
    }
}

//MARK: - get item's datas
extension TodoVC{
    static func tabBarHeight(tabBarController: UITabBarController) -> CGFloat {
        return tabBarController.tabBar.frame.size.height
    }
}
