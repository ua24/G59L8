//
//  PostDetailVC.swift
//  G59L8
//
//  Created by Ivan Vasilevich on 12/26/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

class PostDetailVC: UIViewController {

	var image: UIImage?
	@IBOutlet weak var imageBox: UIImageView!
	
	override func awakeFromNib() {
		super.awakeFromNib()
		
		imageBox?.backgroundColor = .orange
		log()
	}
	
    override func viewDidLoad() {
        super.viewDidLoad()

		log()
        imageBox.image = image
    }
	
	override func viewWillLayoutSubviews() {
		super.viewWillLayoutSubviews()
		
		log()
	}
	
	override func viewDidLayoutSubviews() {
		super.viewDidLayoutSubviews()
		
//		log(message: "yazz? yazz!")
		log()
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
//		print("viewWillAppear")
		log()
	}
	
	override func viewDidAppear(_ animated: Bool) {
		super.viewDidAppear(animated)
		log()
		countScreenAppearences()
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		log()
	}
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		log()
	}
	
	let key = "countScreenAppearences"
	func countScreenAppearences() {
		var count = UserDefaults.standard.integer(forKey: key)
		print("appear count = \(count)")
		count += 1
		UserDefaults.standard.set(count, forKey: key)
		UserDefaults.standard.synchronize()
	}

}
