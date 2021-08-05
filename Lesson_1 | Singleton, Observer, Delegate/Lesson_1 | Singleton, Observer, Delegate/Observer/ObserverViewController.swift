//
//  ObserverViewController.swift
//  Lesson_1 | Singleton, Observer, Delegate
//
//  Created by Catherine on 04.08.2021.
//

import UIKit

class ObserverViewController: UIViewController, Subscriber {
    
    @IBOutlet weak var subscribeInfoLabel: UILabel!
    
    let bloger = Bloger()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bloger.subscribe(self)
    }
    
    // update label
    func update(subject: Bloger) {
        subscribeInfoLabel.text = subject.lastVideo
    }
    
    @IBAction func publishButton(_ sender: Any) {
        bloger.reliseVideo()
    }
    
    @IBAction func subscribeToggle(_ sender: Any) {
        if (sender as AnyObject).isOn {
            bloger.subscribe(self)
        } else {
            bloger.unsubscribe(self)
        }
    }
}
