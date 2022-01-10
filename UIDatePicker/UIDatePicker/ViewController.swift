//
//  ViewController.swift
//  UIDatePicker
//
//  Created by Ярослав on 07.01.2022.
//

import UIKit

class ViewController: UIViewController {

    let picker = UIDatePicker()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker.center = view.center
        
        picker.datePickerMode = .date
    
        self.view.addSubview(picker)
        
        var oneYearTime = TimeInterval()
        oneYearTime = 365 * 24 * 60 * 60
        
        let todayDate = Date()
        
        let oneYearFromToday = todayDate.addingTimeInterval(oneYearTime)
        let twoYearFromDate = todayDate.addingTimeInterval(2 * oneYearTime)
        
        picker.minimumDate = oneYearFromToday
        picker.maximumDate = twoYearFromDate
        
        picker.addTarget(self, action: #selector(datePickerChange(paramDatePicker:)), for: .valueChanged)
        
    }


    @objc func datePickerChange(paramDatePicker: UIDatePicker) {
        if paramDatePicker.isEqual(self.picker){
            print("dateChange : = ", paramDatePicker.date)
        }
    }
}

