//
//  Settings.swift
//  Contained
//
//  Created by Bradley Diroff on 2/24/20.
//  Copyright © 2020 Bradley Diroff. All rights reserved.
//

import Foundation
import SpriteKit

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldFade = false
    var shouldRoll = false
    var shouldZoom = false
    var crabFace = "WaitingCrab"
    
    var lastPosition: (CGFloat, CGFloat)? = nil
    
}
