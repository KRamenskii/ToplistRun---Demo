//
//  UIView + Ext.swift
//  ToplistRun - Demo
//
//  Created by Кирилл Раменский on 19.10.2022.
//

import UIKit

extension UIView {
    
    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchDragOutside,
            .touchUpInside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.20) { self.alpha = 0.55 }
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.20) { self.alpha = 1 }
    }
}
