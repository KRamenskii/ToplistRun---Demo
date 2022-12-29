//
//  ProfileAssembly.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 29.12.2022.
//

import UIKit

final class ProfileAssembly {
    
    static func assemblyModule() -> UIViewController {
        guard let view = UIStoryboard(name: "Profile", bundle: nil).instantiateViewController(withIdentifier: "ProfileViewController") as? ProfileViewController else {
            return UIViewController()
        }
        
        let presenter = ProfilePresenter()
        view.presenter = presenter
        presenter.view = view
        
        return view
    }
}
