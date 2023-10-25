//
//  File.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 25.10.2023.
//

import UIKit.UIStackView

    extension UIStackView {
        convenience init(axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
            self.init()
            self.axis = axis
            self.spacing = spacing
        }
        
        func addArrangedSubviews(_ views: UIView...) {
            views.forEach({
                $0.translatesAutoresizingMaskIntoConstraints = false
                addArrangedSubview($0)
            })
        }
    }
