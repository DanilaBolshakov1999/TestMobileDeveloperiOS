//
//  Extensions + UIView.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 25.10.2023.
//

import UIKit.UIView

extension UIView {
    func addAutoLayoutSubview(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        addSubview(view)
    }
    
    func addAutoLayoutSubviews(_ views: UIView...) {
        views.forEach { addAutoLayoutSubview($0) }
    }
}
