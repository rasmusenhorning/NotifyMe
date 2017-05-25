//
//  OptionsTableModel.swift
//  NotifyMe
//
//  Created by Rasmus Enhörning on 2017-05-25.
//  Copyright © 2017 Rasmus Enhörning. All rights reserved.
//

import Foundation

class OptionsTableModel{
    
    func getRowText(section: Int, row: Int) -> String {
        switch(row){
        case 0:
            return "Facebook Event"
        case 1:
            return "Html Page"
        default:
            return ""
        }
    }
}
