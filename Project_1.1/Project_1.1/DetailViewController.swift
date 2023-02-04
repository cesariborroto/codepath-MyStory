//
//  DetailViewController.swift
//  Project_1.1
//
//  Created by Alejandra Rivera on 1/30/23.
//

import UIKit

class DetailViewController: UIViewController {
    
    var button: Button?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // Do any additional setup after loading the view.
        if let button = button {
                print(button.name)
        }
        if let button = button {
            // Configure the dinosaur image and dynamic labels
            batmanView.image = button.image
            Label1.text = button.name
            Label2.text = button.type
        }
    }
    
    // IBOutlets

        @IBOutlet weak var batmanView: UIImageView!
        @IBOutlet weak var Label1: UILabel!

        @IBOutlet weak var Label2: UILabel!

        

}
