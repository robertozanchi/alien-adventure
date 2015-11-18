//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var itemsList = [UDItem]()
        
        for item in inventory {
            if let itemCheck = item.historicalData["PlanetOfOrigin"] {
                if itemCheck as! String == planet {
                    itemsList.append(item)
                }
                
            }
        }
        return itemsList
    }
    
}
