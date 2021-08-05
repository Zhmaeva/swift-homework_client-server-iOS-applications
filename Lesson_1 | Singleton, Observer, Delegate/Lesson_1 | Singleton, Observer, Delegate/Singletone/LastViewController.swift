//
//  LastViewController.swift
//  Lesson_1 | Singleton, Observer, Delegate
//
//  Created by Catherine on 04.08.2021.
//

import UIKit

class LastViewController: UIViewController {

    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var moneyView: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let session = Session.instance
        nameView.text = session.fio
        moneyView.text = String(describing: session.money)

    }
}
