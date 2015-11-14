//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        var inscribedItem: UDItem?
        
        for item in inventory {
            if let _ = item.inscription {
                if ((item.inscription?.containsString("THE ETERNAL STAR")) != nil) {
                    inscribedItem = item
                }
            }
        }
        
        if let _ = inscribedItem {
            return inscribedItem
        } else {
            return nil
        }
        
    }
}
