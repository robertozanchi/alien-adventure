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
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist")!
        let itemsArray = NSArray(contentsOfURL: dataFileURL)!
        
        for item in itemsArray {
            if let name = item.objectForKey("Name") as? String {
                if name.rangeOfString("Laser") != nil {
                    if let age = item.objectForKey("HistoricalData")?.objectForKey("CarbonAge") as? Int {
                        if age < 30 {
                            bannedList.append((item.objectForKey("ItemID") as? Int)!)
                        }
                    }
                }
            }
        }
        
        return bannedList
    }
}

