//
//  SecondViewController.swift
//  PassingDataUsing Closures
//
//  Created by Abul Kashem on 22/2/23.
//

import UIKit

typealias text = (String) -> ()

class SecondViewController: UIViewController {
    
    @IBOutlet weak var petNameTextField: UITextField!
    
    var clousure : text!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // navigationItem.hidesBackButton = true
        
    }
    
    
    @IBAction func dismissButtonClick(_ sender: UIButton) {
        guard let text = petNameTextField.text else{ return}
        clousure(text)
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
    
}
