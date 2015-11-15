//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        var valuableItem: UDItem? = nil
        
        if inventory.count != 0 {
            
            var value = inventory[0].baseValue
            
            for item in inventory {
                if item.baseValue < value {
                    value = item.baseValue
                    valuableItem = item
                }
            }
        }

        return valuableItem
    }
}
