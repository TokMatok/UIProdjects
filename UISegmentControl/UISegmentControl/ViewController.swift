//
//  ViewController.swift
//  UISegmentControl
//
//  Created by Ярослав on 08.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControl = UISegmentedControl()
    var menuArray = ["Jesus", "Navalny", "Jesus2"]
    var imageView = UIImageView()
    let imageArray = [UIImage(named:"jesus700x450.jpeg"),UIImage(named:"naval700x450.jpeg"),UIImage(named:"pu700x450.jpeg")]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //image
        self.imageView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
        self.imageView.center = self.view.center
        self.imageView.image = self.imageArray[0]
        self.view.addSubview(self.imageView)
        
        //create segmentedControl
        self.segmentedControl = UISegmentedControl(items: self.menuArray)
        self.segmentedControl.frame = CGRect.init(x: 100, y: 700, width: 200, height: 30)
        self.view.addSubview(self.segmentedControl)
        
        self.segmentedControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
    
    @objc func selectedValue(target : UISegmentedControl) {
        if target == self.segmentedControl {
            let segmentIndex = target.selectedSegmentIndex
            
            self.imageView.image = self.imageArray[segmentIndex]
        }
    }


}

