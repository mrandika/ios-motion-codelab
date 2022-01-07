//
//  University.swift
//  MotionCodelab
//
//  Created by Andika on 06/01/22.
//

import Foundation

struct University {
    let id: Int
    let name: String
    let place: String
    let image: String
}

extension University {
    static func dummies() -> [Self] {
        return [
            University(id: 1, name: "Telkom Univ 1", place: "Bandung", image: "telkom"),
            University(id: 2, name: "Telkom Univ 2", place: "Bandung", image: "telkom"),
            University(id: 3, name: "Telkom Univ 3", place: "Bandung", image: "telkom"),
        ]
    }
}
