//
//  FacebookEventViewController.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-26.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import UIKit
import FBSDKCoreKit

class FacebookEventViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = FacebookEventView(frame: self.view.frame)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getFacebookEvent(){
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
