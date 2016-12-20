//
//  PopupViewController.swift
//  Login-homework-nini
//
//  Created by sok channy on 11/10/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

import UIKit

class PopupViewController: UIViewController {

    @IBOutlet weak var labelMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.black.withAlphaComponent(0.6)        
        showAnimate()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func ClosePopup(_ sender: Any) {
        removePopup()
    }
    func showAnimate(){
        self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removePopup(){
        UIView.animate(withDuration: 0.25, animations:{
            self.view.transform = CGAffineTransform(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
            
        }, completion : {(finished : Bool) in
            if finished
            {
                self.view.removeFromSuperview()
            }
        })
    }

}
