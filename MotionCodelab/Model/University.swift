//
//  University.swift
//  MotionCodelab
//
//  Created by Andika on 03/02/22.
//

import Foundation

// Codable
// Paket dari Decodable sama Encodable

typealias Universities = [University]

struct University: Codable {
    let name: String
    let country: String
}
