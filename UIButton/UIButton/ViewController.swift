//
//  ViewController.swift
//  UIButton
//
//  Created by Ярослав on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {

    var myButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton = UIButton(type: .roundedRect)
        myButton.frame = CGRect(x: 110, y: 200, width: 100, height: 44)
        myButton.setTitle("press me", for: .normal)
        myButton.setTitle("i'm praised", for: .highlighted)
        myButton.addTarget(self, action: #selector(buttonIsPressed(sender:)), for: .touchDown)
        myButton.addTarget(self, action: #selector(buttonIsTapped(sender:)), for: .touchUpInside)
        view.addSubview(myButton)
    }

    @objc func buttonIsPressed(sender : UIButton) {
        print ("someone touch a button")
    }
    @objc func buttonIsTapped(sender : UIButton) {
        print("buton is touched, but not so hard")
    }

}

