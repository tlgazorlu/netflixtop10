//
//  ImageViewController.swift
//  landmarkBook
//
//  Created by tolga on 3.05.2020.
//  Copyright © 2020 tolga zorlu. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    @IBOutlet weak var imageVievControler: UIImageView!
    @IBOutlet weak var imageLabelControler: UILabel!
    
    var selectedLandmarkName = ""
    var selectedLanmarkImage = UIImage()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageLabelControler.text = selectedLandmarkName
        imageVievControler.image = selectedLanmarkImage

    }
    

    

}
