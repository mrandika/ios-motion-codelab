//
//  SettingsViewModel.swift
//  MotionCodelab
//
//  Created by Andika on 10/02/22.
//

import Foundation

final class SettingsViewModel: ObservableObject {
    // Singleton
    static let shared = SettingsViewModel()
    
    // Data
    // Two type
    // Statis dan computed properties
    @Published var isReversed: Bool {
        didSet {
            // Set the value
            UserDefaults.standard.set(isReversed, forKey: "settings.isreversed")
        }
    }
    
    init() {
        // Get the value
        self.isReversed = UserDefaults.standard.bool(forKey: "settings.isreversed")
    }
}
