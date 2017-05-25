//
//  StartViewController.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-25.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = StartView(frame : self.view.frame)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
