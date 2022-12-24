//
//  ViewController.swift
//  SuperHeroApp
//
//  Created by Harun Demirkaya on 20.12.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var superHeroNames = [String]()
    var superHeroImage = [String]()
    var selectedSuperHeroNameDestination = ""
    var selectedSuperHeroImageDestination = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        superHeroNames.append("Batman")
        superHeroNames.append("Superman")
        superHeroNames.append("Iron Man")
        superHeroNames.append("Spiderman")
        superHeroNames.append("Captain America")
        
        superHeroImage.append("batman")
        superHeroImage.append("superman")
        superHeroImage.append("ironman")
        superHeroImage.append("spiderman")
        superHeroImage.append("captainamerica")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return superHeroNames.count
        
       
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = superHeroNames[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            superHeroNames.remove(at: indexPath.row)
            superHeroImage.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedSuperHeroNameDestination = superHeroNames[indexPath.row]
        selectedSuperHeroImageDestination = superHeroImage[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destination = segue.destination as! DetailsViewController
            destination.selectedSuperHeroImage = selectedSuperHeroImageDestination
            destination.selectedSuperHeroName = selectedSuperHeroNameDestination
        }
    }

}

