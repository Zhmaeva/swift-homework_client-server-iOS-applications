//
//  Session.swift
//  Lesson_1 | Singleton, Observer, Delegate
//
//  Created by Catherine on 04.08.2021.
//

import UIKit

class Session {
    
    // MARK - Обязательный приватный инит и статическую константу для хранения своего же экземпляра класса
    
    static let instance = Session()
    
    private init() {}
    
    var fio = ""
    var id = 0
    var money = 0
}
