//
//  ViewController.swift
//  didSet_WillSet
//
//  Created by Abul Kashem on 28/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var value: Int = 0 {
        didSet{
            valueLabel.text = "\(value)"
        }
    }
    
    @IBOutlet weak var valueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func increase(_ sender: UIButton) {
        value+=1
    }
    
    @IBAction func decrease(_ sender: UIButton) {
        value -= 1
    }
}


//
//
//import UIKit
//
//struct Person {
//    var name: String
//    var age: Int
//}
//
//
//class ViewController: UIViewController {
//
//    var person: Person?{
//        didSet{
//            print("Called after setting the new value")
//            if let name = person?.name {
//                print("New name is \(name) and old name is \(String(describing: oldValue?.name))")
//            }
//        }
//
//        willSet(myNewValue){
//            print("Called before setting the new value")
//            if let newName = myNewValue?.name{
//                print("New name is \(newName)")
//            }
//        }
//    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        person = Person(name: "kashem", age: 21)
//    }
//
//}
