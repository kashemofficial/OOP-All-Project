//
//  ViewController.swift
//  Protocol
//
//  Created by Abul Kashem on 29/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextButtonAction(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let scene = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        scene.modalTransitionStyle = .crossDissolve
        scene.delegate = self
        self.navigationController?.pushViewController(scene, animated: true)
        
    }
}

extension ViewController: dataSendViewController{
    func data(userText: String) {
        dataLabel.text = userText
    }
}
