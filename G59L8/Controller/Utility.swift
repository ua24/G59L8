//
//  Utility.swift
//  G59L8
//
//  Created by Ivan Vasilevich on 12/28/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

func log(_ functionName: String = #function, line: Int = #line, file: String = #file, message: String = "") {
	let dateFormatter = DateFormatter()
	dateFormatter.dateFormat = "HH:mm:ss"
//	print("---\(dateFormatter.string(from: Date())) l#:\(line) \(functionName) in \((file as NSString).lastPathComponent) " + message)
}


extension UIColor {
	convenience init(red: Int, green: Int, blue: Int) {
		assert(red >= 0 && red <= 255, "Invalid red component")
		assert(green >= 0 && green <= 255, "Invalid green component")
		assert(blue >= 0 && blue <= 255, "Invalid blue component")
		
		self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
	}
	
	convenience init(rgb: Int) {
		self.init(
			red: (rgb >> 16) & 0xFF,
			green: (rgb >> 8) & 0xFF,
			blue: rgb & 0xFF
		)
	}
}

