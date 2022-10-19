//
//  UIViewController + Ext.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 19.10.2022.
//

import UIKit

extension UIViewController {
    
    func setupNavigationBar() {
        navigationController?.view.backgroundColor = .secondarySystemBackground
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.tintColor = Resources.Colors.active
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "bell.fill"), style: .done, target: self, action: nil)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: SubscribeButton())
    }
}
