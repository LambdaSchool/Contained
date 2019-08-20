//
//  Settings.swift
//  Crab Game
//
//  Created by Uptiie on 7/22/19.
//  Copyright © 2019 Walcenberg, Inc. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
