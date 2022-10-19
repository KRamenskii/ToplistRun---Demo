//
//  SearchView.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 19.10.2022.
//

import UIKit

class SearchView: UIView {
    
    // MARK: - Properties
    
    private let textField: UITextField = {
        let textField = UITextField()
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 17, height: 17))
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.tintColor = textField.textColor
        textField.font = .systemFont(ofSize: 17, weight: .regular)
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .never
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.rightViewMode = .always
        textField.rightView = button
        return textField
    }()
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initView()
    }
    
    // MARK: - Configure
    
    private func initView() {
        setView()
        setConstraints()
        setShadow()
    }
    
    private func setView() {
        addSubview(textField)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            textField.centerYAnchor.constraint(equalTo: centerYAnchor),
            textField.leadingAnchor.constraint(equalTo: leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: trailingAnchor)
        ])
    }
    
    private func setShadow() {
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 3.0, height: 2.0)
        layer.shadowOpacity = 1.0
        layer.shadowRadius = 2.0
        layer.masksToBounds = false
        layer.cornerRadius = 4.0
    }
    
    public func configure(_ title: String) {
        textField.placeholder = title
    }
}
