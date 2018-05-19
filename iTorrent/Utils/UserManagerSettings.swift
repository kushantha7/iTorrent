//
//  UserManagerSettings.swift
//  iTorrent
//
//  Created by Daniil Vinogradov on 17.05.2018.
//  Copyright © 2018  XITRIX. All rights reserved.
//

import Foundation

class UserManagerSettings : NSObject, NSCoding  {
	var seedMode : Bool = false
	var addedDate : Date!
	
	override init() {
		addedDate = Date()
	}
	
	required init(coder decoder: NSCoder) {
		self.seedMode = decoder.decodeBool(forKey: "seedMode")
		self.addedDate = decoder.decodeObject(forKey: "addedDate") as? Date ?? Date()
	}
	
	func encode(with coder: NSCoder) {
		coder.encode(seedMode, forKey: "seedMode")
		coder.encode(addedDate, forKey: "addedDate")
	}
}
