//
//  ViewController.swift
//  FadeInPush
//
//  Created by Danny Yassine on 2017-04-09.
//  Copyright © 2017 Danny Yassine. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    var color: UIColor {
        
        let colors = [
            UIColor.red,
            UIColor.green,
            UIColor.brown,
            UIColor.gray,
            UIColor.blue,
            UIColor.cyan,
            UIColor.orange
        ]
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }
    
    override func loadView() {
        self.view = UIView(frame: UIScreen.main.bounds)
        self.view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
    }
    
    func add() {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    
}

