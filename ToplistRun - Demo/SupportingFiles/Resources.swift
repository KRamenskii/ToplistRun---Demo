//
//  Resources.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 14.10.2022.
//

import UIKit

enum Resources {
    
    enum Colors {
        static let active = UIColor(hex: "B448E4")
        static let inactive = UIColor(hex: "4B4A4C")
    }
    
    enum Strings {
        static let rating = "Рейтинг"
        static let calendar = "Календарь"
        static let ribbon = "Лента"
        static let map = "Карта"
        static let profile = "Профиль"
    }
    
    enum Images {
        static let rating = UIImage(systemName: "star.fill")
        static let calendar = UIImage(systemName: "calendar")
        static let ribbon = UIImage(systemName: "house.fill")
        static let map = UIImage(systemName: "globe")
        static let profile = UIImage(systemName: "person.crop.circle")
    }
}
