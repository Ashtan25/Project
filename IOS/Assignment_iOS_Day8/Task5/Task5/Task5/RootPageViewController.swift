//
//  RootPageViewController.swift
//  Task5
//
//  Created by Ashish Singh on 05/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class RootPageViewController: UIPageViewController,UIPageViewControllerDataSource {
    
    lazy var viewControllerList:[UIViewController] = {
       let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = storyBoard.instantiateViewController(withIdentifier: "BlueVC")
        let vc2 = storyBoard.instantiateViewController(withIdentifier: "GreenVC")
        let vc3 = storyBoard.instantiateViewController(withIdentifier: "OrangeVC")
        
        return [vc1, vc2, vc3]

    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        
        if let firstViewController = viewControllerList.first {
            self.setViewControllers([firstViewController], direction: .forward, animated: true, completion: nil)
        }
   
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else { return nil }
        
        let previousIndex = vcIndex - 1
        
        guard previousIndex >= 0 else {return nil}
        
        guard viewControllerList.count > previousIndex else{return nil}
        
        return viewControllerList[previousIndex]
        
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let vcIndex = viewControllerList.index(of: viewController) else { return nil }

        let nextIndex = vcIndex + 1
        
        guard viewControllerList.count != nextIndex else {return nil}
        
        guard viewControllerList.count > nextIndex else{return nil}
        return viewControllerList[nextIndex]
    }
    

   
}
