//
//  StorageManager.swift
//  1. TableView_SW
//
//  Created by Дмитрий Тараканов on 21.11.2019.
//  Copyright © 2019 Dmitry Angarsky. All rights reserved.
//

import RealmSwift

let realm = try! Realm()

class StorageManager {
    
    static func saveObject(_ place: Place) {
        try! realm.write {
            realm.add(place)
        }
    }
    
    static func deleteObject(_ place: Place) {
        try! realm.write {
            realm.delete(place)
        }
    }
}

