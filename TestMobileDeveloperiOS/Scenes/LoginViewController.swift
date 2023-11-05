//
//  LoginViewController.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 26.10.2023.
//

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    //MARK: - UI
    private lazy var imageLogo: UIImageView = {
        let view = UIImageView()
        view.image = .LTechImage.logoEmblem
        return view
    }()
    
    private lazy var accountLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.font = .TextFont.Bold.size(of: 20)
        label.text = "Вход в аккаунт"
        return label
    }()
    
    private lazy var phoneTextField: InputView = {
        let field = InputView()
        field.style = .phone
        return field
    }()
    
    private lazy var passwordTextField: InputView = {
        let field = InputView()
        field.style = .password
        return field
    }()

    private let buttonSingIn = UIButton(
        text: "Войти",
        textColor: .LTech.whiteColor,
        backgroundColor: .LTech.blueColor,
        cornerRadius: 16)

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        saveAddTarget()
        setConstrains()
        view.backgroundColor = .LTech.whiteColor
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.addAutoLayoutSubviews(imageLogo, accountLabel, phoneTextField, passwordTextField)
    }
    
    private func saveAddTarget() { }
    
    //MARK: -  @objc Private Func
    @objc private func defaultButtonTapped() {
        print("defaultButtonTapped")
    }
    
    @objc private func updateButtonTapped() {
        print("updateButtonTapped")
    }
}

//MARK: - Set Constrains
extension LoginViewController {
    private func setConstrains() {
        imageLogo.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).inset(36)
            make.centerX.equalTo(view.snp.centerX)
            make.width.equalTo(130)
            make.height.equalTo(28)
        }
        
        accountLabel.snp.makeConstraints { make in
            make.top.equalTo(imageLogo.snp.bottom).inset(-32)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        phoneTextField.snp.makeConstraints { make in
            make.top.equalTo(accountLabel.snp.bottom).inset(-24)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(phoneTextField.snp.bottom).inset(-24)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(16)
        }
    }
}
