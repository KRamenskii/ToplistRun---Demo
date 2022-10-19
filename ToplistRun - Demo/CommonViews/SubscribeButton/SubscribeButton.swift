//
//  SubscribeButton.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 19.10.2022.
//

import UIKit

class SubscribeButton: UIButton {
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // MARK: - Settings
    
    private func setupView() {
        backgroundColor = Resources.Colors.active
        setTitle("Оформить подписку", for: .normal)
        titleLabel?.textColor = .white
        titleLabel?.font = .systemFont(ofSize: 13, weight: .semibold)
        frame = CGRect(x: 0, y: 0, width: 180, height: 28)
        layer.cornerRadius = 0.5 * 28
    }
}
