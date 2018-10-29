//
//  RootViewController.swift
//  GoalEvents
//
//  Created by Gooooal on 2018/10/15.
//  Copyright © 2018年 Gooooal. All rights reserved.
//

import UIKit


class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    fileprivate lazy var dataSource = [String]()
    fileprivate lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.frame = CGRect(x: 0, y: H(y: 130), width: WinWidth, height: WinHeight - H(y: 130) - NavigationHeight)
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = UITableViewCell.SeparatorStyle.none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.rowHeight = UITableView.automaticDimension
        
        tableView.register(MainCell.self, forCellReuseIdentifier: "MainCell")
        self.automaticallyAdjustsScrollViewInsets = false

        return tableView
    }()
    

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
        label.frame = CGRect(x: WinWidth / 2 - W(x: 80), y: H(y: 25), width: W(x: 160), height: H(y: 80))
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
        
        
        
        setDateUpdate()
        
        self.view.addSubview(tableView)

        
        for index in self.dataSource {
            
            print("\(index)")
        }
    }
    
    
    /// Description
    private func setDateUpdate() {
        
        for index in 0...5 {
            dataSource.append("Swift \(index + 1)")
        }
        print(dataSource)
    }
    
    
    // MARK: tableView Delegate
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier = "MainCell"
        let cell: MainCell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MainCell
        
        if indexPath.row % 2 == 0 {
            cell.backgroundColor = UIColor().utilsColorHex(h: 0xf3f3f3)
        } else {
            cell.backgroundColor = UIColor.clear
        }
        
        let label = UILabel()
        label.frame = CGRect(x: W(x: 30), y: H(y: 5), width: W(x: 160), height: H(y: 20))
        label.textAlignment = NSTextAlignment.left
        label.numberOfLines = 0;
        label.backgroundColor = UIColor.clear
        label.font = FontArial2(13)
        label.text = dataSource[indexPath.row]
        label.numberOfLines = 0
        label.preferredMaxLayoutWidth = W(x: 160)
        cell.addSubview(label)
        
        let label2 = UILabel()
        label2.frame = CGRect(x: W(x: 30), y: H(y: 25), width: WinWidth - W(x: 60), height: H(y: 45))
        label2.textAlignment = NSTextAlignment.left
        label2.numberOfLines = 0;
        label2.backgroundColor = UIColor().utilsColorHexJHA(h: "#0054ae", a: 0.5)
        label2.font = FontAriBold(s: 13)
        label2.text = "当前 Row: \(indexPath.row)"
        label2.numberOfLines = 0
        label2.preferredMaxLayoutWidth = W(x: 160)
        cell.addSubview(label2)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: false)
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
