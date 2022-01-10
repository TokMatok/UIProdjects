//
//  ViewController.swift
//  Alert
//
//  Created by Ярослав on 04.01.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
    @IBAction func ShowButton(_ sender: Any) {
        let alertController = UIAlertController(title: "Error", message: "AHTUNG", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default) { (action) in
            let text = alertController.textFields?.first?.text
            print(text ?? "nill text")
        }
        alertController.addTextField(configurationHandler: nil)
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
        
    }
    
}

