//
//  FadeInController.swift
//  FadeInPush
//
//  Created by Danny Yassine on 2017-04-09.
//  Copyright © 2017 Danny Yassine. All rights reserved.
//

import UIKit

class FadeInController: NSObject {

}

extension FadeInController: UINavigationControllerDelegate {
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationControllerOperation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        switch operation {
        case .push:
            return FadeInPushAnimator()
        case .pop:
            return FadeInPushAnimator(isPresenting: false)
        default:
            return nil
        }
        
    }
}
