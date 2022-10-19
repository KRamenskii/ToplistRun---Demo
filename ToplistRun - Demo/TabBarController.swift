//
//  TabBarController.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 14.10.2022.
//

import UIKit

enum Tabs: Int {
    case rating
    case calendar
    case ribbon
    case map
    case profile
}

final class TabBarController: UITabBarController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        configure()
        self.selectedIndex = 2
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        tabBar.tintColor = Resources.Colors.active
        tabBar.barTintColor = Resources.Colors.inactive
        tabBar.backgroundColor = .secondarySystemBackground
        tabBar.layer.masksToBounds = true
        
        let ratingController = RatingAssembly.assemblyModule()
        let calendarController = UIViewController()
        let ribbonController = UIViewController()
        let mapController = UIViewController()
        let profileController = UIViewController()
        
        let ratingNavigation = UINavigationController(rootViewController: ratingController)
        let calendarNavigation = UINavigationController(rootViewController: calendarController)
        let ribbonNavigation = UINavigationController(rootViewController: ribbonController)
        let mapNavigation = UINavigationController(rootViewController: mapController)
        let profileNavigation = UINavigationController(rootViewController: profileController)
        
        ratingController.tabBarItem = UITabBarItem(title: Resources.Strings.rating, image: Resources.Images.rating, tag: Tabs.rating.rawValue)
        calendarController.tabBarItem = UITabBarItem(title: Resources.Strings.calendar, image: Resources.Images.calendar, tag: Tabs.calendar.rawValue)
        ribbonController.tabBarItem = UITabBarItem(title: Resources.Strings.ribbon, image: Resources.Images.ribbon, tag: Tabs.ribbon.rawValue)
        mapController.tabBarItem = UITabBarItem(title: Resources.Strings.map, image: Resources.Images.map, tag: Tabs.map.rawValue)
        profileController.tabBarItem = UITabBarItem(title: Resources.Strings.profile, image: Resources.Images.profile, tag: Tabs.profile.rawValue)
        
        setViewControllers([
            ratingNavigation,
            calendarNavigation,
            ribbonNavigation,
            mapNavigation,
            profileNavigation
        ], animated: false)
    }
}
