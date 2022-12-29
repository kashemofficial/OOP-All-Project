//
//  SecondViewController.swift
//  Protocol
//
//  Created by Abul Kashem on 29/12/22.
//

import UIKit

protocol dataSendViewController{
    func data(userText: String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    
    var delegate : dataSendViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func dataPassingAction(_ sender: UIButton){
        delegate?.data(userText: userTextField.text!)
        self.navigationController?.popViewController(animated: true)
        
    }
    
}
