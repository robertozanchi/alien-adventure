//
//  PlanetData.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let itemsJSON = NSData(contentsOfURL: dataFileURL)!
        
        var planetDictionariesfromJSON: [[String:AnyObject]]
        do {
            planetDictionariesfromJSON = try! NSJSONSerialization.JSONObjectWithData(itemsJSON,options: NSJSONReadingOptions.MutableContainers) as! [[String : AnyObject]]
        }
        
        var maxScore: Int = 0
        var maxName: String = ""
        
        for item in planetDictionariesfromJSON {
            
            if let commonItems = item["CommonItemsDetected"] as? Int {
                if let uncommonItems = item["UncommonItemsDetected"] as? Int {
                    if let rareItems = item["RareItemsDetected"] as? Int {
                        if let legendaryItems = item["LegendaryItemsDetected"] as? Int {
                            let itemScore = (1 * commonItems + 2 * uncommonItems + 3 * rareItems + 4 * legendaryItems)
                            if itemScore > maxScore {
                                maxScore = itemScore
                                if let itemName = item["Name"] as? String {
                                    maxName = itemName
                                }
                            }
                        }
                    }
                }
            }
        }
        
        return maxName
    }
}
