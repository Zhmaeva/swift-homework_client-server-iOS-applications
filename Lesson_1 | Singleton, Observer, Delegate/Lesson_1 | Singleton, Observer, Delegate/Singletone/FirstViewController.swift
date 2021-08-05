//
//  ViewController.swift
//  Lesson_1 | Singleton, Observer, Delegate
//
//  Created by Catherine on 04.08.2021.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        session.fio = "Жмаева Екатерина Эдуардовна"
        session.id = 1
        session.money = 9999
    }


}

