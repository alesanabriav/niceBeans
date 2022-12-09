//
//  MenuSection.swift
//  NiceBeans
//
//  Created by Alejandro Sanabria on 9/12/22.
//

import Foundation

struct MenuSection : Identifiable, Codable {
    let id: UUID
    let name: String
    let drinks: [Drink]
    
}
