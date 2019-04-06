import RealmSwift
import UIKit

class TodoList: Object {
    @objc dynamic var id: Int = 0
    @objc dynamic var content: String?
    @objc dynamic var created: Date = Date()
    @objc dynamic var update_at: Date = Date()
    
    override static func primaryKey() -> String? {
        return "id"
    }
}
