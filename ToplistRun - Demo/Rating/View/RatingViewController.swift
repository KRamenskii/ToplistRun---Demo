//
//  RatingViewController.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 15.10.2022.
//

import UIKit

class RatingViewController: UIViewController {
    
    // MARK: - Properties
    
    var presenter: RatingPresenter?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setupNavigationBar()
    }
    
    // MARK: - Private functions
    
}

// MARK: - RatingViewInput

extension RatingViewController: RatingViewInput {
    
}
