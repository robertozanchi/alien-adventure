//
//  PolicingItems.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError:Int] {
        
        var errorDictionary = [UDPolicingError:Int]()
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.ItemFromCunia {
                
            } catch UDPolicingError.NameContainsLaser {
                
            } catch UDPolicingError.ValueLessThan10 {
                
            }
        }
        return errorDictionary
    }    
}