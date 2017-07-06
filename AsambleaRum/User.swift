//
//  User.swift
//  AsambleaRum
//
//  Created by Fernando on 7/5/17.
//  Copyright © 2017 Specialist. All rights reserved.
//

import Foundation
import FirebaseDatabase.FIRDataSnapshot

class User {
    
    // MARK: - Properties
    
    let uid: String
    let sid: String
    
    // MARK: - Init
    
    init(uid: String, sid: String) {
        self.uid = uid
        self.sid = sid
    }
    
    init?(snapshot: DataSnapshot) {
        guard let dict = snapshot.value as? [String : Any],
            let sid = dict["sid"] as? String
            else { return nil }
        
        self.uid = snapshot.key
        self.sid = sid
    }
}
