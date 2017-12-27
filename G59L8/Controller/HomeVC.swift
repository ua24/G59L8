//
//  HomeVC.swift
//  G59L8
//
//  Created by Ivan Vasilevich on 12/26/17.
//  Copyright © 2017 RockSoft. All rights reserved.
//

import UIKit

//var selectedImage: UIImage?

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
		view.backgroundColor = .blue
    }
    
	@IBAction func pictureSelected(_ sender: UIButton) {
//		showPost
		let imageFromButton = sender.currentImage
//		selectedImage = imageFromButton
		performSegue(withIdentifier: "showPost", sender: imageFromButton)
	}
	
	
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		if let detailsVC = segue.destination as? PostDetailVC {
			print(sender as? NSObject)
			detailsVC.image = sender as? UIImage
		}
    }
	

}
