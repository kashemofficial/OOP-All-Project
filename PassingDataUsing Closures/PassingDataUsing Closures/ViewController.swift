//
//  ViewController.swift
//  PassingDataUsing Closures
//
//  Created by Abul Kashem on 22/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var petNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func nextButtonClick(_ sender: UIButton) {
        
        let stVC = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        stVC.clousure = {text in
            self.petNameLabel.text = text
        }
        
        
        navigationController?.pushViewController(stVC, animated: true)
        
    }
    

}

