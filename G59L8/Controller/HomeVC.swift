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
		view.backgroundColor = UIColor(rgb: 0xC78784)
//		view.backgroundColor = UIColor.init(displayP3Red: 14/100.0, green: 14/100.0, blue: 14/100.0, alpha: 1)
		
		print(Date())
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
