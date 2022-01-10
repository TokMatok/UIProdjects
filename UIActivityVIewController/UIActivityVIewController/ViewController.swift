//
//  ViewController.swift
//  UIActivityVIewController
//
//  Created by Ярослав on 08.01.2022.
//

import UIKit

class ViewController: UIViewController {

    var buttonShare = UIButton()
    var textField = UITextField()
    var activityViewController : UIActivityViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createTextField()
        self.createButton()
    }
    
    
    //MARK: - Method
    func createTextField() {
        self.textField.frame = CGRect(x: 0, y: 0, width: 280, height: 30)
        self.textField.center = self.view.center
        self.textField.borderStyle = UITextField.BorderStyle.roundedRect
        self.textField.placeholder = "Enter Text here"
        
        self.view.addSubview(self.textField)
        
    }
    func createButton() {
        self.buttonShare = UIButton(type: .roundedRect)
        self.buttonShare.frame = CGRect(x: 50, y: 350, width: 280, height: 44)
        self.buttonShare.setTitle("Share", for: .normal)
        self.buttonShare.addTarget(self, action: #selector(handleShare(paramSender:)), for: .touchUpInside)
        self.view.addSubview(self.buttonShare)
    }
    
    
    @objc func handleShare(paramSender : Any) {
        let text = self.textField.text
        if ((text?.isEmpty) == nil) {
            let message = "Write message first"
            let alertControler = UIAlertController(title: nil, message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertControler.addAction(action)
            self.present(alertControler, animated: true, completion: nil)
            
        }
        
        self.activityViewController = UIActivityViewController(activityItems: [self.textField.text ?? "nill"], applicationActivities: nil)
        self.present(self.activityViewController!, animated: true, completion: nil)
    }
}

