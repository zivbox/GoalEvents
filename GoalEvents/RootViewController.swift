//
//  RootViewController.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/15.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import UIKit


class RootViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Goooal"
        
        let label = UILabel()
        label.frame = CGRect(x: WinWidth / 2 - 80, y: 50, width: 160, height: 100)
        label.backgroundColor = UIColor().utilsColorHexJHA(h: "#0054ae", a: 0.5)
        label.font = FontAriBold(s: 13)
        label.text = Date().utilsTimeWithRestore(format: UtilsTimeFormat.format_default.rawValue, date: "1540181395")
        self.view.addSubview(label)
        
        
        
    }
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
