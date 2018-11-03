//
//  ViewController.swift
//  Number Picker
//
//  Created by Oswaldo Pablo on 9/29/18.
//  Copyright © 2018 Oswaldo Pablo. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    var numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pickerView = UIPickerView()
        pickerView.frame = self.view.frame
        
        self.view.addSubview(pickerView)
        pickerView.delegate = self
        pickerView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return numbers.count
    }
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?  {
        return numbers[row]
    }

}

