//
//  Extensions + UITextField.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 26.10.2023.
//

import UIKit.UITextField

extension UITextField {
    convenience init(hasBorder: Bool, backgroundColor: UIColor?, cornerRadius: CGFloat, placeholder: String) {
        self.init()
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.placeholder = placeholder
        self.textColor = .LTech.customBlackColor
        self.font = .DisplayFont.Regular.size(of: 17)
        
        if hasBorder {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.gray.cgColor
        }
    }
    
    func setupFirstButton(with image: UIImage) {
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(deletedButtonTappedFirst), for: .touchUpInside)
        
        self.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    func setupSecondButton(with image: UIImage) {
        let button = UIButton(type: .system)
        button.setImage(image, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(deletedButtonTappedSecond), for: .touchUpInside)
        
        self.addSubview(button)
        
        NSLayoutConstraint.activate([
            button.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -24),
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
    @objc private func deletedButtonTappedFirst() {
        print("deletedButtonTappedFirst")
    }
    
    @objc private func deletedButtonTappedSecond() {
        print("deletedButtonTappedSecond")
    }
}

// MARK: - Padding for textContent

extension UITextField {
    
    func setLeftPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0,
                                               y: 0,
                                               width: amount,
                                               height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setRightPaddingPoints(_ amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0,
                                               y: 0,
                                               width: amount,
                                               height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
