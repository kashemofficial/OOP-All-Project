//
//  ViewController.swift
//  DataPassingUsingProtocol
//
//  Created by Abul Kashem on 15/2/23.
//

import UIKit

class InternViewController: UIViewController {
    
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func bossButtonAction(_ sender: UIButton) {
        let st = UIStoryboard(name: "Main", bundle: nil)
        let vc = st.instantiateViewController(withIdentifier: "BossViewController") as! BossViewController
        vc.makCommandObj = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
extension InternViewController: MakeaCommand{
    func orderToIntern(command: String?) {
        print("Hello \(command ?? "")")
        count += 1
        print(count)
    }
}
