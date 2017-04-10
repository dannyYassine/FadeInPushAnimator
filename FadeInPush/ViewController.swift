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
        
        let colors: [UIColor] = [
            .red,
            .green,
            .brown,
            .gray,
            .blue,
            .cyan,
            .orange,
            .darkGray,
            .magenta,
            .purple,
            .yellow,
            .white
        ]
        return colors[Int(arc4random_uniform(UInt32(colors.count)))]
    }
    
    override func loadView() {
        self.view = UIView(frame: UIScreen.main.bounds)
        self.view.backgroundColor = color
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let smallView1 = UIView(frame: CGRect(x: 50, y: 100, width: self.view.frame.width - 100, height: 100))
        smallView1.backgroundColor = color
        self.view.addSubview(smallView1)
        
        let smallView2 = UIView(frame: CGRect(x: 50, y: 300, width: self.view.frame.width - 100, height: 100))
        smallView2.backgroundColor = color
        self.view.addSubview(smallView2)
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(add))
    }
    
    func add() {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }
    
}

