//
//  StartViewController.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-25.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

	var table: OptionsTableViewController?
	
    override func viewDidLoad() {
        super.viewDidLoad()
		SizeConstants.shared.navigationBarMargin = (navigationController?.navigationBar.frame.height)! + UIApplication.shared.statusBarFrame.height
		self.table = OptionsTableViewController(style: UITableViewStyle.plain)
		self.table?.tableView.frame = CGRect(x:0,y:SizeConstants.shared.navigationBarMargin,width:UIScreen.main.bounds.width,height:UIScreen.main.bounds.height - SizeConstants.shared.navigationBarMargin)
        self.view = StartView(frame: self.view.frame,table: (self.table?.tableView)!)
		
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
