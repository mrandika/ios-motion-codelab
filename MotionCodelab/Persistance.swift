//
//  Persistance.swift
//  MotionCodelab
//
//  Created by Andika on 10/02/22.
//

import Foundation
import CoreData

struct PersistanceController {
    // Singleton
    static let shared = PersistanceController()
    
    let container: NSPersistentContainer
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "MotionCodelab")
        
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores(completionHandler: { (desc, error) in
            if let error = error as NSError? {
                debugPrint(error)
            }
        })
    }
}
