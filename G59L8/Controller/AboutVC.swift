//
//  AboutVC.swift
//  G59L8
//
//  Created by Ivan Vasilevich on 12/26/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

class AboutVC: UIViewController {

	@IBOutlet weak var textView: UITextView!
	
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		let code = """
		func log(_ functionName: String = #function, line: Int = #line, file: String = #file, message: String = "") {
		let dateFormatter = DateFormatter()
		dateFormatter.dateFormat = "HH:mm:ss"
		print("---\\(dateFormatter.string(from: Date())) l#:\\(line) \\(functionName) in \\((file as NSString).lastPathComponent) " + message)
		}
		Add Comment
"""
		textView.text = code
		
		view.endEditing(true)
	}

}
