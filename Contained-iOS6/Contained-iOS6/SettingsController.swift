//
//  SettingsController.swift
//  Contained-iOS6
//
//  Created by Hector Steven on 4/29/19.
//  Copyright © 2019 Hector Steven. All rights reserved.
//

import Foundation

class SettingsController {
	func setRoll() {
		seting.shouldRoll.toggle()
	}
	
	func setZoom() {
		seting.shouldZoom.toggle()
	}
	
	var seting = Settings()
}
