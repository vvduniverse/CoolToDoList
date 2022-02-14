//
//  ToDoError.swift
//  CoolToDoList
//
//  Created by Vahtee Boo on 14.02.2022.
//

import Foundation

enum ToDoError: Error, LocalizedError {
    case saveError
    case readError
    case decodingError
    case encodingError
    
    var errorDescription: String? {
        switch self {
            
        case .saveError:
            return NSLocalizedString("Could not save ToDos, please reinstall the app.", comment: "")
        case .readError:
            return NSLocalizedString("Could not load ToDos, please reinstall the app.", comment: "")
        case .decodingError:
            return NSLocalizedString("There was a problem loading your ToDos, please create a new ToDo to start over.", comment: "")
        case .encodingError:
            return NSLocalizedString("Could not save ToDos, please reinstall the app.", comment: "")
        }
    }
}


struct ErrorType: Identifiable {
    let id = UUID()
    let error: ToDoError
}
