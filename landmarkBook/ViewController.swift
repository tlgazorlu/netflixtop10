//
//  ViewController.swift
//  landmarkBook
//
//  Created by tolga on 2.05.2020.
//  Copyright © 2020 tolga zorlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var choseLanmarkName = ""
    var choseLanmarkImage = UIImage()
    

    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        
        landmarkNames.append("La Casa De Papel")
        landmarkNames.append("Too Hot To Handle")
        landmarkNames.append("Mobil Onay")
        landmarkNames.append("Aşk 101")
        landmarkNames.append("Extraction")
        landmarkNames.append("After Life")
        landmarkNames.append("Recep İvedik 6")
        landmarkNames.append("Prison Break")
        
        
        landmarkImages.append(UIImage(named: "netflix1")!)
        landmarkImages.append(UIImage(named: "netflix2")!)
        landmarkImages.append(UIImage(named: "netflix3")!)
        landmarkImages.append(UIImage(named: "netflix4")!)
        landmarkImages.append(UIImage(named: "netflix5")!)
        landmarkImages.append(UIImage(named: "netflix6")!)
        landmarkImages.append(UIImage(named: "netflix8")!)
        landmarkImages.append(UIImage(named: "netflix9")!)

        navigationItem.title = "Netflix Top 10"


    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
        
        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
        
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return landmarkNames.count
   
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
       choseLanmarkName = landmarkNames[indexPath.row]
       choseLanmarkImage = landmarkImages[indexPath.row]
        
        performSegue(withIdentifier: "toImageViewControler", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toImageViewControler" {
            
            let destinationVC = segue.destination as! ImageViewController
            
            destinationVC.selectedLandmarkName = choseLanmarkName
            destinationVC.selectedLanmarkImage = choseLanmarkImage
            
            
        }
        
        
    }
    
}


