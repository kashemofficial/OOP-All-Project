//
//  ViewController.swift
//  UITextField only numbers
//
//  Created by Abul Kashem on 15/3/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextField.delegate = self

    }


}
extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if numberTextField == textField{
            let allowedCharacters = "0123456789"
            let allowedCharacterSet = CharacterSet(charactersIn: allowedCharacters)
            let typedCharactersetIn = CharacterSet(charactersIn: string)
            let numbers = allowedCharacterSet.isSuperset(of: typedCharactersetIn)
            return numbers
        }
        return true
    }
    
}

