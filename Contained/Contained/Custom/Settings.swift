//
//  Settings.swift
//  Contained
//
//  Created by Bobby Keffury on 8/7/19.
//  Copyright © 2019 Bobby Keffury. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
