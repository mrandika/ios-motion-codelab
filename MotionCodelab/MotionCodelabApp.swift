//
//  MotionCodelabApp.swift
//  MotionCodelab
//
//  Created by Andika on 03/02/22.
//

import SwiftUI

@main
struct MotionCodelabApp: App {
    // Call CoreData singleton
    let persistanceController = PersistanceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistanceController.container.viewContext)
        }
    }
}
