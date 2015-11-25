//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import SpriteKit

class SpecialBadge: Badge {

    var requestType: UDRequestType
    
    override init(requestType: UDRequestType) {
        self.requestType = requestType
        let badge = SKTexture(imageNamed: "BadgeTeal")
        super.init(texture: badge, color: UIColor.clearColor(), size: CGSizeMake(48, 48))
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}