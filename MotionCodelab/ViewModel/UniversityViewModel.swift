//
//  UniversityViewModel.swift
//  MotionCodelab
//
//  Created by Andika on 03/02/22.
//

import Foundation

final class UniversityViewModel: ObservableObject {
    // Singleton
    static let shared = UniversityViewModel()
    let service = UniversityService.shared
    
    // Data
    @Published var universities: Universities = []
    
    // State
    @Published var isLoading: Bool = false
    @Published var isError: Bool = false
    
    func getUniversities() {
        self.isLoading = true
        self.isError = false
        
        service.fetchUniversity { result in
            switch (result) {
            case .success(let data):
                // The call succeed
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.universities = data
                }
            case .failure(_):
                // You can handle error here...
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.isError = true
                }
            }
        }
    }
}
