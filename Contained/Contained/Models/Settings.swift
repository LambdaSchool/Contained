//
//  Settings.swift
//  Contained
//
//  Created by Alex Shillingford on 7/22/19.
//  Copyright © 2019 Alex Shillingford. All rights reserved.
//

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}
