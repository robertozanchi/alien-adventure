//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var itemsRarity = [UDItemRarity:Int]()
        
        itemsRarity[UDItemRarity.Common] = 0
        itemsRarity[UDItemRarity.Uncommon] = 0
        itemsRarity[UDItemRarity.Rare] = 0
        itemsRarity[UDItemRarity.Legendary] = 0
        
        for item in inventory {
            if item.rarity == UDItemRarity.Common {
                itemsRarity[UDItemRarity.Common] = itemsRarity[UDItemRarity.Common]!+1
            } else if item.rarity == UDItemRarity.Uncommon {
                itemsRarity[UDItemRarity.Uncommon] = itemsRarity[UDItemRarity.Uncommon]!+1
            } else if item.rarity == UDItemRarity.Rare {
                itemsRarity[UDItemRarity.Rare] = itemsRarity[UDItemRarity.Rare]!+1
            } else if item.rarity == UDItemRarity.Legendary {
                itemsRarity[UDItemRarity.Legendary] = itemsRarity[UDItemRarity.Legendary]!+1
            }
        }
        return itemsRarity
    }
}
