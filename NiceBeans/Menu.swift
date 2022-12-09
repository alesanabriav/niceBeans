//
//  Menu.swift
//  NiceBeans
//
//  Created by Alejandro Sanabria on 9/12/22.
//

import Foundation

class Menu : ObservableObject, Codable {
    
    enum MyError: Error {
        case openMenu
    }
    
    let sections: [MenuSection]
    
    init() {
        
        do {
            guard let url = Bundle.main.url(forResource: "menu", withExtension: "json") else {
                throw MyError.openMenu
            }
            
            let data = try Data(contentsOf: url)
            
            let menuData = try JSONDecoder().decode(Menu.self, from: data)
            
            sections = menuData.sections
            
        } catch {
            
    
            fatalError("menu opening error \(error)")
        }
        
    }
}
