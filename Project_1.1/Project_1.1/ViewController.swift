//
//  ViewController.swift
//  Project_1.1
//
//  Created by Alejandra Rivera on 1/30/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    let backstory = Button(name: "Backstory", image: UIImage(named: "backstory")!, type: "ornithomimid")
    let strength = Button(name: "Strength", image: UIImage(named: "strength")!, type: "stegosaur")
    let weakness = Button(name: "Weakness", image: UIImage(named: "weakness")!, type: "theropod")
    
    // Array for storing Dinosaurs
    var buttons: [Button] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        buttons = [backstory, strength, weakness]
    }

    @IBAction func didTapButtom(_ sender: UITapGestureRecognizer) {
        if let tappedView = sender.view {
            performSegue(withIdentifier: "detailSegue", sender: tappedView)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        if segue.identifier == "detailSegue",
            let tappedView = sender as? UIView,
            let detailViewController = segue.destination as? DetailViewController {

            if tappedView.tag == 0 {
                detailViewController.button = buttons[0]
            } else if tappedView.tag == 1 {
                detailViewController.button = buttons[1]
            } else if tappedView.tag == 2 {
                detailViewController.button = buttons[2]
            } else {
                print("no Dinosaur was tapped, please check your selection.")
            }
        }
    }
    
}

