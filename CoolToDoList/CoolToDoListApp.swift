//
//  CoolToDoListApp.swift
//  CoolToDoList
//
//  Created by Vahtee Boo on 11.02.2022.
//

import SwiftUI

@main
struct CoolToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataStore())
        }
    }
}
