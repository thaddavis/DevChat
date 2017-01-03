//
//  User.swift
//  DevChat2
//
//  Created by Thad Duval on 1/2/17.
//  Copyright © 2017 Thad Duval. All rights reserved.
//

import UIKit

struct User {
    private var _firstName: String
    private var _uid: String
    
    var uid: String {
        return _uid
    }
    
    var firstName: String {
        return _firstName
    }
    
    init(uid: String, firstName: String) {
        _uid = uid
        _firstName = firstName
    }
}
