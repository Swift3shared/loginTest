//
//  UserList .swift
//  Login-homework-nini
//
//  Created by sok channy on 11/8/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

class UserList{
    var _list : [[String:String]]=[[:]]
    init() {
        _list.append(["email" : "Sokchanny@gmail.com", "password":"1234"])
        _list.append(["email" : "Nini@gmail.com", "password":"12345"])
        _list.append(["email" : "Yaiyai@gmail.com", "password":"123456"])
    }
    
    func check(user : [String:String]) -> Bool{
        for u in _list {
            if u["email"] == user["email"] && u["password"] == user["password"] {
                return true
            }
        }
        return false
    }
}
