//
//  ColourViewController.swift
//  ColourFun
//
//  Created by Tai Nguyen Bui on 29/01/16.
//  Copyright © 2016 Tai Nguyen Bui. All rights reserved.
//

import UIKit

class ColourViewController: UIViewController {

    @IBOutlet weak var colourLabel: UILabel!
    
    var colourDetails : (name: String, colour: UIColor)!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        self.view.backgroundColor = self.colourDetails.colour
        self.colourLabel.text = self.colourDetails.name
    }

}
