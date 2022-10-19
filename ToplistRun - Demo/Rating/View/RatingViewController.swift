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
    
    @IBOutlet weak var searchView: SearchView!
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
    }
    
    // MARK: - Settings
    
    private func setView() {
        setupNavigationBar()
        searchView.configure("Найди себя в базе спортсменов")
    }
}

// MARK: - RatingViewInput

extension RatingViewController: RatingViewInput {
    
}
