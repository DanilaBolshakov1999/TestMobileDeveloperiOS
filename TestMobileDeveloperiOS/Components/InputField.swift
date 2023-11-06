//
//  InputField.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 27.10.2023.
//

import UIKit

final class InputField: UIView {

    //MARK: - Properties
    let title: String

    private lazy var inputTextField: UITextField = {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.clearButtonMode = .whileEditing
        return textField
    }()
    
    private lazy var nameInput: UILabel = {
        let label = UILabel()
        label.text = title
        label.textColor = .LTech.customBlackColor
        label.font = .TextFont.Bold.size(of: 20)
        return label
    }()

    //MARK: - init
    init(inputField: UITextField, title: String) {
        self.title = title
        super.init(frame: .zero)
        self.inputTextField = inputField
        setupView()
        setConstraints()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Setup View
    private func setupView() {
        addSubviews(nameInput, inputTextField)
        inputTextField.layer.cornerRadius = 24
        inputTextField.setLeftPaddingPoints(16)
        inputTextField.setRightPaddingPoints(16)
    }

    //MARK: - Set Constraints
    private func setConstraints() {
        NSLayoutConstraint.activate([
            nameInput.topAnchor.constraint(equalTo: topAnchor),
            nameInput.leadingAnchor.constraint(equalTo: leadingAnchor),

            inputTextField.topAnchor.constraint(equalTo: nameInput.bottomAnchor, constant: 8),
            inputTextField.leadingAnchor.constraint(equalTo: leadingAnchor),
            inputTextField.trailingAnchor.constraint(equalTo: trailingAnchor),
            inputTextField.bottomAnchor.constraint(equalTo: bottomAnchor),
            inputTextField.heightAnchor.constraint(equalToConstant: 56)
        ])
    }
}
