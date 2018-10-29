//
//  MainCell.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/24.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import Foundation
import UIKit

class MainCell: UITableViewCell {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
    }
    
    
}
