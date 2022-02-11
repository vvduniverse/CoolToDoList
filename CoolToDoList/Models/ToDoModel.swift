//
//  ToDoModel.swift
//  CoolToDoList
//
//  Created by Vahtee Boo on 11.02.2022.
//

import Foundation

struct ToDo: Identifiable, Codable {
    
    var id: String = UUID().uuidString
    var name: String
    var completed: Bool = false
    
    static var sampleData: [ToDo] {
        [
        ToDo(name: "Wake up early in the morning!"),
        ToDo(name: "Take care of my health!", completed: true),
        ToDo(name: "Feed the homeless animals")
        ]
    }
}
