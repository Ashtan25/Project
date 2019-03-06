//
//  ViewController.swift
//  Task1Coding
//
//  Created by Ashish Singh on 06/03/19.
//  Copyright © 2019 Ashish Singh. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
        let viewControl1 = storyBoard.instantiateViewController(withIdentifier: "Favourites")
        let viewControl2 = storyBoard.instantiateViewController(withIdentifier: "SearchView")
        let viewControl3 = storyBoard.instantiateViewController(withIdentifier: "MoreView")


        viewControl1.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 0)
        viewControl2.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        viewControl3.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 2)

        let tabBarList = [viewControl1, viewControl2, viewControl3]
        viewControllers = tabBarList
        
        
    }


}

