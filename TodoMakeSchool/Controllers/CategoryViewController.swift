//
//  CategoryViewController.swift
//  TodoMakeSchool
//
//  Created by William Fernandes on 7/17/18.
//  Copyright © 2018 William Fernandes. All rights reserved.
//

import UIKit
import AVFoundation

class CategoryViewController: UIViewController {
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        addCategory()
    }
    func addCategory(){
        /****Programatically add button to "Add/Create Task" [Begin]****/
        
        var addTaskButton = UIButton(frame: CGRect(origin: CGPoint(x: self.view.frame.maxX - 75, y: self.view.frame.size.height - 140), size: CGSize(width: 50, height: 50)))
        addTaskButton.setTitle("+", for: .normal)
        addTaskButton.backgroundColor = UIColor(red:1.00, green:0.27, blue:0.32, alpha:1.0)
        addTaskButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 45)
        //adding action to the button
        addTaskButton.addTarget(self, action: #selector(addTaskClicked(_ :)), for: .touchUpInside)
        
        self.view.addSubview(addTaskButton)
        
        /****Programatically add button to "Add/Create Task" [End]****/
    }
    @objc func addTaskClicked(_ :UIButton){
        //insert segue to DisplayTaskViewController
        print("Add Category Tapped")
    }
}
