//
//  ViewController.swift
//  Keychain Sample
//
//  Created by Kurtulus Ahmet on 05/07/15.
//  Copyright (c) 2015 Kurtulus Ahmet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func kayıt(sender: UIButton) {
        let data = textfield.text
        
       KeychainSwift.set(data, forKey: "my key")
    }

}

