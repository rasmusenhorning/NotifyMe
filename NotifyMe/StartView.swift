//
//  StartView.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-25.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import Foundation
import UIKit

class StartView: UIView {
	
	init(frame: CGRect, table: UITableView) {
		super.init(frame : frame)
		super.backgroundColor = UIColor.white
		super.addSubview(table)
	}
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
