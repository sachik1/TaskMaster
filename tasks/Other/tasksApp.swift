//
//  tasksApp.swift
//  tasks
//
//  Created by Sachi Kelkar on 7/21/24.
//

import FirebaseCore
import SwiftUI

@main
struct tasksApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
