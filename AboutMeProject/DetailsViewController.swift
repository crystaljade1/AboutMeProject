//
//  DetailsViewController.swift
//  AboutMeProject
//
//  Created by Crystal Jade Allen-Washington on 6/28/17.
//  Copyright © 2017 Crystal Jade Allen-Washington. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func backButton() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.font = UIFont(name: "Didot", size: 40)
        titleLabel.text = aboutMeOptions[myIndex]
        descriptionLabel.text = aboutMeDescriptions[myIndex]
        imageView.image = aboutMeImages[myIndex]
    }
   
}
