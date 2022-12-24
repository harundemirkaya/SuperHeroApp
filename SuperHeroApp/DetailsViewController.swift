//
//  DetailsViewController.swift
//  SuperHeroApp
//
//  Created by Harun Demirkaya on 21.12.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgViewImage: UIImageView!
    var selectedSuperHeroName = ""
    var selectedSuperHeroImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lblTitle.text = selectedSuperHeroName
        imgViewImage.image = UIImage(named: selectedSuperHeroImage)
    }
    
}
