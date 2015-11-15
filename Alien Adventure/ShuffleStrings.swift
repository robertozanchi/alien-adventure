//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 9/30/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1 != "" && s2 != "" && shuffle != "" {
            let combined = s1 + s2
            if combined.characters.count != shuffle.characters.count {
                return false
            }
        } else if s1 == "" && s2 == "" && shuffle == "" {
            return true
        } else if s1 == "" && s2 == "" && shuffle != "" {
            return false
        }
        
        return shuffle.characters.indexOf(s1[s1.startIndex]) < shuffle.characters.indexOf(s1[s1.startIndex.successor()]) && shuffle.characters.indexOf(s2[s2.startIndex]) < shuffle.characters.indexOf(s2[s2.startIndex.successor()])

        
    }

}