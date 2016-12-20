//
//  DetailViewController.swift
//  Login-homework-nini
//
//  Created by sok channy on 11/8/16.
//  Copyright © 2016 pha vansa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var person:Person!
    @IBOutlet weak var labelNote: UILabel!
    @IBOutlet weak var imageProfile: UIImageView!
    @IBOutlet weak var labelHiegh: UILabel!
    @IBOutlet weak var labelWeight: UILabel!
    @IBOutlet weak var labelGender: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        prepare()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    func prepare() {
        labelNote.text = person.note
        labelHiegh.text = "\(person.hiegh)"
        labelGender.text = person.gender
        labelWeight.text = "\(person.wieght)"
    }
}
