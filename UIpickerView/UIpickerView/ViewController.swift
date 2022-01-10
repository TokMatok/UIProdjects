//
//  ViewController.swift
//  UIpickerView
//
//  Created by Ярослав on 07.01.2022.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIPickerView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        //sub
        picker.dataSource = self
        picker.delegate = self
        
        self.view.addSubview(picker)
        
    }


}

extension ViewController : UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
}

extension ViewController : UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        let result = "row = \(row)"
        
        return result
    }
}
