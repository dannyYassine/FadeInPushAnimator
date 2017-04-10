# FadeInPushAnimator
#### Custom UIViewControllerAnimatedTransitioning between UIViewControllers 
##### (Inspired by AirBnB)

![](https://raw.githubusercontent.com/dannyYassine/FadeInPushAnimator/master/save_gif.gif)

# UINavigationController Setup

    extension YourClassThatImplements: UINavigationControllerDelegate {
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
    
 # UITabBarController Setup

    extension YourClassThatImplements: UITabBarControllerDelegate {
        func tabBarController(_ tabBarController: UITabBarController, animationControllerForTransitionFrom fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
            return FadeInPushAnimator()
        }
    }
