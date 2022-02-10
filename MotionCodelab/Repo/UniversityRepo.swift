//
//  UniversityRepo.swift
//  MotionCodelab
//
//  Created by Andika on 03/02/22.
//

import Foundation

class UniversityRepo {
    // Singleton
    // Untuk membuat object hanya sekali pada saat runtime
    static let shared = UniversityRepo()
    
    // Base URL API
    let baseUrl = "http://universities.hipolabs.com"
    
    func getIndonesianUniversities() -> URL {
        let path = "/search"
        let query = "?country=Indonesia"
        
        // Approach 1
        // Keyword guard let untuk menjaga value optional
//        guard let url = URL(string: baseUrl+path+query) else {
//            return URL()
//        }
        
        // (yet another) Approach
//        if let url = URL(string: baseUrl+path+query) {
//
//        }
        
        // Approach 2
        // ! (bang) unwrap optional value
        // ?? (optional value)
        let url = URL(string: baseUrl+path+query)!
        
        return url
    }
}
