//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {

        if requestTypes.count == 0 {
            return true
        }
        
        var allBadges = [UDRequestType]()
        for badge in badges {
            allBadges.append(badge.requestType)
        }
        
        if allBadges.count < requestTypes.count {
            return false
        }
        
        var value: Bool = false
        
        for request in requestTypes {
            if allBadges.contains(request) {
                value = value || true
            } else {
                value = value || false
            }
                
        }
        
        return value
    }
}
