//
//  Notification.swift
//  Lesson_1 | Singleton, Observer, Delegate
//
//  Created by Catherine on 04.08.2021.
//

import UIKit

// MARK: - Protocols
protocol Subscriber: AnyObject {
    func update(subject: Bloger)
}

// fix retain circle
struct WeakSubscriber {
    weak var value: Subscriber?
}

class Bloger {
    // create array with subscribers
    private lazy var subscribers: [WeakSubscriber] = []
    
    var counter: Int = 0
    var lastVideo = ""
    
    // subscribe
    func subscribe(_ subscriber: Subscriber) {
        print("subscribed")
        subscribers.append(WeakSubscriber(value: subscriber))
    }
    
    // unsubscribe
    func unsubscribe(_ subscriber: Subscriber) {
        subscribers.removeAll(where: { $0.value === subscriber})
        print("unsubscribed")
    }
    
    // notify to subscribes
    func notify() {
        subscribers.forEach { $0.value?.update(subject: self)
        }
    }
    
    // relise video +1
    func reliseVideo() {
        counter += 1
        lastVideo = "Video \(counter)"
        notify()
        print("Bloger relized new video")
    }
}




