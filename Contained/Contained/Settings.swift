//
//  Settings.swift
//  Contained
//
//  Created by Dillon P on 8/7/19.
//  Copyright © 2019 Dillon P. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
