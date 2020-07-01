//
//  Settings.swift
//  Contained
//
//  Created by Craig Swanson on 10/1/19.
//  Copyright © 2019 Craig Swanson. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
