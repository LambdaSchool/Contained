//
//  Model.swift
//  Contained
//
//  Created by Sameera Leola on 11/14/18.
//  Copyright © 2018 Sameera Leola. All rights reserved.
//

import Foundation
import UIKit

class Model {
    static let shared = Model()
    private init() {}
    
    var shouldRoll = false
    var shouldZoom = false
    
    var whichCrab: String = "HappyCrab"
    
    func selectCrab (_ crab: String) {
        whichCrab = crab
    }
    
    func getCrab() -> String {
        return whichCrab
    }
    
    //Saving last position
    private(set) var lastPosition: CGPoint? = nil
    
    func saveLastPosition (position: CGPoint) {
        lastPosition = position
    }
    
    func getLastPosition() -> CGPoint {
        return lastPosition!
    }
    
    
}
