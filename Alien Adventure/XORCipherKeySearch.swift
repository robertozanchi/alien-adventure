//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/3/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

extension Hero {

    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        
        var key: UInt8 = 0
        
        for x in UInt8.min..<UInt8.max {
            
            var decrypted = [UInt8]()
            
            for character in encryptedString {
            // ADD CODE: perform decryption
                decrypted.append(character ^ x)
            }

            if let decryptedString = String(bytes: decrypted,
            encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
            // ADD CODE: found match, now what?
                key = x
                break
            }
        }
        
    return key

    }
}