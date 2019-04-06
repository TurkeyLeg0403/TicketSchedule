//
//  RealmStructs.swift
//  TicketSchedule
//
//  Created by Takaki Otsu on 2019/04/06.
//  Copyright © 2019 Takaki Otsu. All rights reserved.
//

import Foundation

struct  TodoListStruct {
    var id: Int? = nil // When NewObjects added, this is nil
    var content: String?
    var created: Date = Date()
    var update_at: Date = Date()
}
