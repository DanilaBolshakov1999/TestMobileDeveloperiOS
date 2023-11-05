//
//  UserTabBarViewController.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 24.10.2023.
//

import UIKit

class UserTabBarViewController: UITabBarController {
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTabs()
    }
    
    //MARK: - Configure Tabs
    private func configureTabs() {
    
        let viewControllerFirstTab = NewsViewController()
        let viewControllerSecondTab = NewsViewController()
        viewControllerSecondTab.type = .likes
        let viewControllerThirdTab = ProfileViewController()
        
        viewControllerFirstTab.tabBarItem.image = .LTechImage.home
        viewControllerSecondTab.tabBarItem.image = .LTechImage.favorites
        viewControllerThirdTab.tabBarItem.image = .LTechImage.account
        
        viewControllerFirstTab.title = "Главная"
        viewControllerSecondTab.title = "Избранное"
        viewControllerThirdTab.title = "Аккаунт"
        
        let viewControllerFirst = UINavigationController(rootViewController: viewControllerFirstTab)
        let viewControllerSecond = UINavigationController(rootViewController: viewControllerSecondTab)
        let viewControllerThird = UINavigationController(rootViewController: viewControllerThirdTab)
        
        tabBar.backgroundColor = .white
        
        
        setViewControllers([viewControllerFirst, viewControllerSecond, viewControllerThird], animated: true)
    }
}
