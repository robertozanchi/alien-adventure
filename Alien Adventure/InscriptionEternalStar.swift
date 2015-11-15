//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        var inscribedItem: UDItem? = nil

        for item in inventory {
            if let inscription = item.inscription where inscription.uppercaseString.containsString("THE ETERNAL STAR") {
                        inscribedItem = item
                }
        }
        
        return inscribedItem
        
    }
}
