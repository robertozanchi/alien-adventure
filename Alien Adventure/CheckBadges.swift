//
//  CheckBadges.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
//        if badges.count != requestTypes.count {
//            return false
//        }

        
        
        var badgesS: [UDRequestType] = []
        var value: Bool = false
        
        for badge in badges {
            badgesS.append(badge.requestType)
        }
        
        for request in requestTypes {
            if badgesS.contains(request) {
                value = value || true
            } else {
                value = value || false
            }
                
        }
        


        print(badges.count)
        print(requestTypes.count)
        print("end test")
        
//        for badge in badges {
//            print(badge.requestType)
//        }
        
        
        return value
    }
}
