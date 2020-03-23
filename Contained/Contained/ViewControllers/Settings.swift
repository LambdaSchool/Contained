//
//  Settings.swift
//  Contained
//
//  Created by Marissa Gonzales on 3/23/20.
//  Copyright © 2020 Joe Veverka. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
