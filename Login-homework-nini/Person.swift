//
//  Person.swift
//  Login-homework-nini
//
//  Created by sok channy on 11/8/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

class Person{
    private var _name : String = ""
    private var _gender : String = ""
    private var _hiegh : Float = 0.0
    private var _wieght : Float = 0.0
    private var _note : String = ""
    
    var name : String {
        get{
            return self._name
        }
        set{
            self._name = newValue
        }
    }
    var gender : String{
        get{
            return self._gender
        }
        set{
            self._gender = newValue
        }
    }
    var hiegh : Float{
        get{
            return self._hiegh
        }
        set{
            self._hiegh = newValue
        }
    }
    var wieght : Float{
        get{
            return self._wieght
        }
        set{
            self._wieght = newValue
        }
    }
    var note : String{
        get{
            return self._note
        }
        set{
            self._note = newValue
        }
    }
    init() {}
    init(Name:String, Gender:String, Height:Float, Wieght:Float, Note:String) {
        self.name = Name
        self.gender = Gender
        self.hiegh = Height
        self.wieght = Wieght
        self.note = Note
    }
}
