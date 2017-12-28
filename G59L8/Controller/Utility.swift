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
	print("---\(dateFormatter.string(from: Date())) l#:\(line) \(functionName) in \((file as NSString).lastPathComponent) " + message)
}

class Utility: NSObject {

}
