//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by kelly on 2014/10/28.
//  Copyright (c) 2014年 kelly. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var menShoeSizeTextField: UITextField!
    @IBOutlet weak var menShoeSizeConvertLabel: UILabel!
    @IBOutlet weak var womenShoeSizeTextField: UITextField!
    @IBOutlet weak var womenShoeSizeConverLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = menShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        menShoeSizeConvertLabel.hidden = false
        menShoeSizeTextField.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"

    }

    @IBAction func womenConvertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womenShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womenShoeSizeConverLabel.hidden = false
        womenShoeSizeTextField.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
    }
    
}

