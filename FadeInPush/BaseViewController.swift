//
//  BaseViewController.swift
//  FadeInPush
//
//  Created by Danny Yassine on 2017-04-09.
//  Copyright © 2017 Danny Yassine. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
