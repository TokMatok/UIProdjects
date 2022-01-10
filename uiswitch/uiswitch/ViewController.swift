//
//  ViewController.swift
//  uiswitch
//
//  Created by Ярослав on 05.01.2022.
//

import UIKit

class ViewController: UIViewController {

    let mySwitch = UISwitch()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.mySwitch.frame = CGRect(x: 100, y: 100, width: 0, height: 0)
        self.view.addSubview(self.mySwitch)
        
        self.mySwitch.setOn(true, animated: true)
        
        if self.mySwitch.isOn {
            print ("switch is on")
        } else {
            print ("switch is off")
        }
        
        func swChange(paramTarget : UISwitch) {
            print("param is = ", paramTarget)
            if paramTarget.isOn {
                print ("switch is on")
            } else {
                print ("switch is off")
            }
    }
        self.mySwitch.addTarget(self, action: #selector(swChange(paramTarget:)), for: .valueChanged)
        
        

    
}

}
