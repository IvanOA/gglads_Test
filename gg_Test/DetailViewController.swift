//
//  DetailViewController.swift
//  gg_Test
//
//  Created by Иван on 23.01.17.
//  Copyright © 2017 Иван. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var sectionName: UILabel!
    var product: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        sectionName.text = product
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}