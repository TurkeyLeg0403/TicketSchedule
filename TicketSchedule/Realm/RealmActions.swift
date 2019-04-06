import RealmSwift

class RealmActions: NSObject {
    let realm = try! Realm()
    
    func addCalendarContentsToRealm(contents: TodoListStruct) {
        var objectId = 0
        if contents.id == nil {
            objectId = realm.objects(TodoList.self).count
        } else {
            objectId = contents.id!
        }
        
        let newObject = TodoList()
        newObject.id = objectId
        newObject.content = contents.content
        RealmManager.addObject(object: newObject, update: true)
    }
}
