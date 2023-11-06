//
//  InputView.swift
//  InputView
//
//  Created by Danila Bolshakov on 28.10.2023.
//

import UIKit

//MARK: - InputViewStyle
enum InputViewStyle {
    case phone
    case password
}

final class InputViewCustom: UIView {
    
    //MARK: - UI
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var inputField: UITextField = {
        let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        return field
    }()
    
    var style: InputViewStyle = .password
    
    //MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        switch style {
        case .phone:
            titleLabel.text = "Телефон"
            inputField.clearButtonMode = .always
        case .password:
            titleLabel.text = "Пароль"
            inputField.keyboardType = .emailAddress
            inputField.isSecureTextEntry = true
        }
        addSubview(titleLabel)
        addSubview(inputField)
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            inputField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            inputField.leadingAnchor.constraint(equalTo: leadingAnchor),
            inputField.trailingAnchor.constraint(equalTo: trailingAnchor),
            inputField.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
