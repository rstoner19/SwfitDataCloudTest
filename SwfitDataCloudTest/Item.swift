//
//  Item.swift
//  SwfitDataCloudTest
//
//  Created by Rick Stoner on 1/25/24.
//

import Foundation
import SwiftData

@Model
final class Person {
    var firstName: String?
    var lastName: String?
    var gender: String?
    
    init(firstName: String, lastName: String, gender: Gender) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender.name
    }
}

enum Gender: Codable {
    case male
    case female
    case transgender
    case nonbinary
    case other
    
    var name: String {
        switch self {
        case .male:
            return "Male"
        case .female:
            return "Female"
        case .transgender:
            return "Transgender"
        case .nonbinary:
            return "Non-Binary/Non-Conforming"
        case .other:
            return "Prefer not to respond"
        }
    }
}
