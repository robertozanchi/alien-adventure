//
//  BannedItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedList = [Int]()
        
        let dataFileURL = NSBundle.mainBundle().URLForResource("ItemList", withExtension: "plist")!
        let itemsArray = NSArray(contentsOfURL: dataFileURL)!
        
        for item in itemsArray {
            if let name = item["Name"] as? String {
                print(name)
            }
           
        }
        return bannedList
    }
}

