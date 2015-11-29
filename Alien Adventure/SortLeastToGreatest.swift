//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        
        let sortedItems = inventory.sort( {(item1: UDItem, item2: UDItem) -> Bool in
            return item1 < item2
        })
        
        return sortedItems
    }
    
}
