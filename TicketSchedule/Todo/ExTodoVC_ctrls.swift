import UIKit

//MARK: - controllers to view
extension TodoVC {
    func addCellContent() {
        // add contents
        self.contents += [self.cellContentField.text!]
        self.todoTable.reloadData()
        // reset items
        self.cellContentField.text = ""
        self.cellAddBtn.isEnabled = false
    }
}
