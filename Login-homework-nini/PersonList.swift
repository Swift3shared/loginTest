//
//  PersonList.swift
//  Login-homework-nini
//
//  Created by sok channy on 11/9/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

class PersonList{
    var _list:[String:Person] = [:]
    init() {
        _list["Sokchanny@gmail.com"] = Person(Name: "Channy", Gender: "Male", Height: 175, Wieght: 67, Note: "Some time I have to live alone, sleep and sing with my dog. I simply falling inlove with cute girl.")
        _list["Nini@gmail.com"] = Person(Name: "NiNi", Gender: "Male", Height: 195, Wieght: 97, Note: "Some time I have to live alone, sleep and sing with my dog. I simply falling inlove with cute girl.")
        _list["Yaiyai@gmail.com"] = Person(Name: "Yai Crak", Gender: "Femal", Height: 155, Wieght: 40, Note: "Some time I have to live alone, sleep and sing with my dog. I simply falling inlove with cute girl.")
    }
    func getPerson(key:String) -> Person {
        return _list[key] ?? Person()
    }
    
}
