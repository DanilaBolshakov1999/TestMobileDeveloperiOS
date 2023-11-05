//
//  Extensions.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 27.10.2023.
//

import UIKit.UIButton

extension UIButton {
    convenience init(text: String?, textColor: UIColor?, backgroundColor: UIColor?, cornerRadius: CGFloat = 0) {
        self.init()
        self.setTitle(text, for: .normal)
        self.setTitleColor(textColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
    }
}
