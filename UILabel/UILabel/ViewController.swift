//
//  ViewController.swift
//  UILabel
//
//  Created by Ярослав on 09.01.2022.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
 
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let labelFrame = CGRect(x: 0, y: 0, width: 100, height: 50)
        myLabel.frame = labelFrame
        myLabel.numberOfLines = 0
        myLabel.lineBreakMode = .byWordWrapping
        //myLabel.sizeToFit()
        myLabel.adjustsFontSizeToFitWidth = true
        myLabel.text = "а знаете анекдот про улитку в баре?"
        myLabel.font = UIFont.boldSystemFont(ofSize: 19)
        myLabel.center = self.view.center
        view.addSubview(myLabel)
    }
    
    
    




}

