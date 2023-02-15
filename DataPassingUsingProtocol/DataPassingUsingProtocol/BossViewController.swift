//
//  InternViewController.swift
//  DataPassingUsingProtocol
//
//  Created by Abul Kashem on 15/2/23.
//

import UIKit

protocol MakeaCommand{
    func orderToIntern(command: String?)
}

class BossViewController: UIViewController {

    var makCommandObj: MakeaCommand?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        callingFunctionInsideBoss()
    }
    
}

extension BossViewController {
    
    func callingFunctionInsideBoss(){
        makCommandObj?.orderToIntern(command: "Done The Job!")
    }
}
