//
//  ViewController.swift
//  If let vs Guard let
//
//  Created by Abul Kashem on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonSaveAction(_ sender: UIButton) {
       
        /*
         if let fullName = fullNameTextField.text,fullName != ""{
            if let age = ageTextField.text,age != ""{
                if let city = cityTextField.text,city != ""{
                    if let email = emailTextField.text,email != ""{
                        print("Full Name \(fullName). Age \(age). City \(city). Email \(email)")
                    }else{
                        print("Email is Empty")
                    }
                }else{
                    print("City is empty")
                }
            }else{
                print("Age is empty")
            }
            
        }else{
            print("Full Name is empty")
        }
        */
        
        guard let fullName = fullNameTextField.text, fullName != "" else{
            print("full Name is Empty")
            return
        }
        
        guard let age = ageTextField.text, age != "" else{
            print("Age is Empty")
            return
        }
        
        guard let city = cityTextField.text, city != "" else{
            print("City is Empty")
            return
        }
        
        guard let email = emailTextField.text, email != "" else{
            print("email is Empty")
            return
        }
        
        print("full name \(fullName), age \(age), city \(city), email \(email)")
        
        
        
        
        
        
        // print(fullNameTextField)
        // print(fullNameTextField.text) //optional
        
        //        guard let txtField = fullNameTextField else{
        //            print("FullNameText is nil")
        //            return
        //        }
        //
        //        print(txtField.text!)
        //
        //        if let txtField = fullNameTextField{
        //            print(txtField.text)
        //        }
        //        else{
        //            print("FullNameText is nil")
        //        }
        
    }
    
}

