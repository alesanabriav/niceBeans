//
//  MenuView.swift
//  NiceBeans
//
//  Created by Alejandro Sanabria on 9/12/22.
//

import SwiftUI

struct MenuView: View {
    
    @EnvironmentObject var menu: Menu
    
    let columns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    
                    ForEach(menu.sections) { section in
                        
                        Section {
                            
                            ForEach(section.drinks) { drink in
                                
                                VStack {
                                    Text(drink.name)
                                }
                                .padding(.bottom)
                                
                            }
                            
                        }
                    }
                }
                .padding(.horizontal)
            }
        }
        .navigationTitle("Add drink")
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView().environmentObject(Menu())
    }
}
