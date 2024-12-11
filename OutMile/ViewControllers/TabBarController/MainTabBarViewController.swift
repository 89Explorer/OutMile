//
//  ViewController.swift
//  OutMile
//
//  Created by 권정근 on 12/10/24.
//

import UIKit

class MainTabBarViewController: UITabBarController {
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabBar()
    }
    
    // MARK: - Functions
    private func setupTabBar() {
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        let feedVC = UINavigationController(rootViewController: FeedViewController())
        let profileVC = UINavigationController(rootViewController: ProfileViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName: "house")
        homeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        feedVC.tabBarItem.image = UIImage(systemName: "plus")
        feedVC.tabBarItem.selectedImage = UIImage(systemName: "plus.fill")
        
        profileVC.tabBarItem.image = UIImage(systemName: "person")
        profileVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
        
        
        tabBar.tintColor = .label
        tabBar.backgroundColor = .systemBackground
        
        homeVC.tabBarItem.title = "집"
        feedVC.tabBarItem.title = "글쓰기"
        profileVC.tabBarItem.title = "내정보"
        
        setViewControllers([homeVC, feedVC, profileVC], animated: true)
    }
}



