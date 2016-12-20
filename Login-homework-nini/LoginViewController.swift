//
//  LoginViewController.swift
//  Login-homework-nini
//
//  Created by sok channy on 11/8/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textboxEmail: RoundedTextField!
    @IBOutlet weak var textboxPassword: RoundedTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textboxPassword.delegate = self
        self.textboxEmail.delegate = self
    }

    @IBAction func LoginClick(_ sender: Any) {
        let list = UserList()
        if list.check(user: ["email" : textboxEmail.text!, "password" : textboxPassword.text!]) {            
            self.performSegue(withIdentifier: "showDetail", sender: self)
        }
        else{
            if textboxEmail.text == "" {
                PerformPopup(Message: "Enter your email")
            }else if textboxPassword.text == ""{
                PerformPopup(Message: "Enter your password")
            }else{
                PerformPopup(Message: "Email or password is incorrect")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.isEqual(textboxEmail){
            self.textboxPassword.becomeFirstResponder()
        }
        if textField.isEqual(textboxPassword){
            textField.resignFirstResponder()
            LoginClick(self)
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let list = PersonList()
        let detailView = segue.destination as! DetailViewController
        print(textboxEmail.text!)
        detailView.person = list.getPerson(key: textboxEmail.text!)
    }
    
    func PerformPopup(Message: String){
        let popUpOverVc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ErrorPopup") as! PopupViewController
        self.addChildViewController(popUpOverVc)
        popUpOverVc.view.frame = self.view.frame
        self.view.addSubview(popUpOverVc.view)
        popUpOverVc.labelMessage.text = Message
        popUpOverVc.didMove(toParentViewController: self)
    }
}
