//
//  RatingAssembly.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 15.10.2022.
//

import UIKit

final class RatingAssembly {
    
    static func assemblyModule() -> UIViewController {
        guard let view = UIStoryboard(name: "Rating", bundle: nil).instantiateViewController(withIdentifier: "RatingViewController") as? RatingViewController else {
            return UIViewController()
        }
        
        let presenter = RatingPresenter()
        view.presenter = presenter
        presenter.view = view
        
        return view
    }
}
