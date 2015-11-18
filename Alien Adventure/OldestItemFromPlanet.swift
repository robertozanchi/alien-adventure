//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var oldestItem: UDItem?
        var oldestAge: Int = 0
        
        for item in inventory {
            if let planetCheck = item.historicalData["PlanetOfOrigin"] {
                if planetCheck as! String == planet {
                    let itemAge = item.historicalData["CarbonAge"]
                    if itemAge as! Int > oldestAge {
                        oldestAge = itemAge as! Int
                        oldestItem = item
                    }
                }
                
            }
        }
        
        return oldestItem
    }
    
}
