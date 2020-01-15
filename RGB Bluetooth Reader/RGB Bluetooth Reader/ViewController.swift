//
//  ViewController.swift
//  RGB Bluetooth Reader
//
//  Created by João Costa on 14/01/2020.
//  Copyright © 2020 João Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Background: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        Background.layer.backgroundColor = CGColor(srgbRed: 100.0/255.0, green: 130.0/255.0, blue: 230.0/255.0, alpha: 1)
    }
    
    @IBAction func RGBaction(_ sender: UIButton) {
        print(sender.title(for: .normal)!)
        Background.layer.backgroundColor = CGColor(srgbRed: 130.0/255.0, green: 130.0/255.0, blue: 230.0/255.0, alpha: 1)
    }
 
}


