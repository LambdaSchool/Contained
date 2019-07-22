//
//  Settings.swift
//  CrabRollGame
//
//  Created by Ryan Dutson on 7/22/19.
//  Copyright © 2019 Ryan Dutson. All rights reserved.
//

import Foundation

import Foundation

class Settings {
    static let shared = Settings()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
}


