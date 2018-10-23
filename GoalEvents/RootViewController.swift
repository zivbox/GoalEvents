//
//  RootViewController.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/15.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import UIKit


class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    fileprivate var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.title = "Goooal"

        /**
         * let 用于定义常量，定义完后不能修改。 var 用于定义变量，可以修改。
         */
        let label = UILabel()
        label.frame = CGRect(x: WinWidth / 2 - 80, y: 25, width: 160, height: 80)
        label.textAlignment = NSTextAlignment.center
        label.numberOfLines = 0;
        label.backgroundColor = UIColor().utilsColorHexJHA(h: "#0054ae", a: 0.5)
        label.font = FontAriBold(s: 13)
        label.text = "当前时间:\n" + Date().utilsTimeCurrentDate(format: UtilsTimeFormat().format_default)
        self.view.addSubview(label)
        
        
        /**
         /**
         *  泛型
         */
         struct Stack<E> {
         var items = [E]()
         mutating func push(_ item: E) {
         items.append(item)
         }
         mutating func pop() -> E {
         return items.removeLast()
         }
         }
         
         var stackString = Stack<String>()
         stackString.push("goal")
         stackString.push("events")
         print("push: " + "\(stackString.items)")
         
         let deleos = stackString.pop()
         print("pop: " + deleos)
         */
        
        tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: 130, width: WinWidth, height: WinHeight - 130 - NavigationHeight)
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "UITableViewCell")
        self.automaticallyAdjustsScrollViewInsets = false

        
        
    }
    
    
    // MARK: tableView Delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 15
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 75.0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier = "UITableViewCell"
        let cell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: identifier) as! UITableViewCell
        
        cell.textLabel?.text = String(indexPath.row)
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor().utilsColorHex(h: 0xf3f3f3)
        } else {
            cell.backgroundColor = UIColor.clear
        }
        
        return cell
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
