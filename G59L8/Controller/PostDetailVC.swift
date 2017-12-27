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
	
    override func viewDidLoad() {
        super.viewDidLoad()

		
        imageBox.image = image
    }

}
