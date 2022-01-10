//
//  ViewController.swift
//  UITextVIew
//
//  Created by Ярослав on 10.01.2022.
//

import UIKit

class ViewController: UIViewController {

    var myTextView = UITextView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(updateTextView), name: UIResponder.keyboardDidShowNotification, object: nil)
        createTextView()
                
        
        // Do any additional setup after loading the view.
    }

    func createTextView() {
        myTextView = UITextView(frame: CGRect(x: 20, y: 100, width: view.bounds.width - 20, height: view.bounds.height / 2))
        myTextView.text = "Hello UIkit Text View!"
        myTextView.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 0)
        myTextView.font = UIFont.systemFont(ofSize: 17)
        myTextView.backgroundColor = .gray
        view.addSubview(myTextView)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        myTextView.resignFirstResponder()
        myTextView.backgroundColor = .white
    }

     @objc func updateTextView(param : Notification) {
        let userInfo = param.userInfo
        
        let getKeyboardRect = (userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue
        let keyboardFrame = view.convert(getKeyboardRect, to: view.window)
        
        if param.name == UIResponder.keyboardDidShowNotification {
            myTextView.contentInset = UIEdgeInsets.zero
        } else {
            myTextView.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: keyboardFrame.height, right: 0)
            myTextView.scrollIndicatorInsets = myTextView.contentInset
        }
        myTextView.scrollRangeToVisible(myTextView.selectedRange)
    }
    
    
    
    
    
}

