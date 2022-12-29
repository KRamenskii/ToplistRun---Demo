//
//  ProfileViewController.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 29.12.2022.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    // MARK: - Properties
    
    var presenter: ProfilePresenter?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
    }
    
    // MARK: - Settings
    
    private func setView() {
        setupNavigationBar()
        
    }
}

// MARK: - ProfileViewInput

extension ProfileViewController: ProfileViewInput {
    
}
