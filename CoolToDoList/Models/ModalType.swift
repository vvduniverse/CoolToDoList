//
//  ModelType.swift
//  CoolToDoList
//
//  Created by Vahtee Boo on 11.02.2022.
//

import SwiftUI

enum ModalType: Identifiable, View {
    case new
    case update(ToDo)
    var id: String {
        switch self {
        case .new:
            return "new"
        case .update:
            return "update"
        }
    }
    
    var body: some View {
        switch self {
        case .new:
            return AddToDoView(formVM: AddToDoViewModel())
        case .update(let toDo):
            return AddToDoView(formVM: AddToDoViewModel(toDo))
        }
    }
    
}
