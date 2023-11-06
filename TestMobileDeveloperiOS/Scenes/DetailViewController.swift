//
//  DetailViewController.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 24.10.2023.
//

import UIKit
import SnapKit

final class DetailViewController: UIViewController {
    
    //MARK: - Unification UI
    private lazy var scrollView: UIScrollView = {
        let view = UIScrollView()
        view.backgroundColor = .LTech.customWhiteColor
        view.showsVerticalScrollIndicator = false
        return view
    }()
    
    private lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
    
    private lazy var stackViewLabel: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.axis = .horizontal
        stack.spacing = 5
        return stack
    }()
    
    private lazy var textField: UITextView = {
        let textView = UITextView()
        textView.text = """
В отчёте по исследованию космического аппарата «Новые Горизонты» (New Horizons), запущенном NASA в январе 2006 года.
На борту аппарата находится телескоп имени Хаббла, который будет исследовать Плутон и его спутники.
В отчёте говорится, что за время полёта аппарата на орбите Плутона была обнаружена атмосфера с высоким содержанием метана и азотного ангидрида.
Это открытие подтверждает гипотезу, согласно которой на Плутоне есть лёд, но не объясняет, каким образом он там оказался.
"""
        textView.font = UIFont.systemFont(ofSize: 16)
        return textView
    }()
    
    //MARK: - User Interface
    private lazy var labelDate: UILabel = {
        let label = UILabel()
        label.text = "05 декабря"
        label.textColor = .LTech.customGrayColor
        return label
    }()
    
    private lazy var labelTime: UILabel = {
        let label = UILabel()
        label.text = "19:40"
        label.textColor = .LTech.customGrayColor
        return label
    }()
    
    private lazy var titleMainLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Отчёт Лаборатории реактивного движения (JPL)"
        label.textColor = .LTech.customBlackColor
        label.font = UIFont.boldSystemFont(ofSize: 20)
        return label
    }()
    
    private lazy var imageViewPhoto: UIImageView = {
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.image = .LTechImage.satellite
        return image
    }()
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        setUp()
        setViews()
        setConstrains()
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.addAutoLayoutSubview(scrollView)
        scrollView.addAutoLayoutSubview(contentView)
        stackViewLabel.addArrangedSubviews(labelDate, labelTime)
        contentView.addAutoLayoutSubviews(
            stackViewLabel,
            titleMainLabel,
            imageViewPhoto,
            textField
        )
    }
    
    private func setUp() {
        textField.delegate = self
    }
    
    //MARK: - Создаем кастомные кнопки
    private func customButton() {
        let backButton = UIButton(type: .custom)
        backButton.setImage(.LTechImage.arrowBack, for: .normal)
        backButton.addTarget(self, action: #selector(firstButtonTapped), for: .touchUpInside)
        
        let likeButton = UIButton(type: .custom)
        likeButton.setImage(.LTechImage.like, for: .normal)
        likeButton.addTarget(self, action: #selector(secondButtonTapped), for: .touchUpInside)
        
        let sharedButton = UIButton(type: .custom)
        sharedButton.setImage(.LTechImage.shared, for: .normal)
        sharedButton.addTarget(self, action: #selector(thirdButtonTapped), for: .touchUpInside)
        
        let customBarButtonItemFirst = UIBarButtonItem(customView: backButton)
        let customBarButtonItemSecond = UIBarButtonItem(customView: likeButton)
        let customBarButtonItemThird = UIBarButtonItem(customView: sharedButton)
        
        navigationItem.leftBarButtonItem = customBarButtonItemFirst
        navigationItem.rightBarButtonItems = [ customBarButtonItemSecond, customBarButtonItemThird]
    }
    
    //MARK: -  @objc Private Func
    @objc private func firstButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func secondButtonTapped() {
        print("firstButtonTapped")
    }
    
    @objc private func thirdButtonTapped() {
        print("secondButtonTapped")
    }
}

//MARK: - Set Constrains
extension DetailViewController {
    
    private func setConstrains() {
        
        scrollView.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top)
            make.leading.equalTo(view.snp.leading)
            make.trailing.equalTo(view.snp.trailing)
            make.bottom.equalTo(view.snp.bottom)
        }
        
        contentView.snp.makeConstraints { make in
            make.top.equalTo(scrollView.snp.top)
            make.leading.equalTo(scrollView.snp.leading).inset(16)
            make.trailing.equalTo(scrollView.snp.trailing).inset(-16)
            make.bottom.equalTo(scrollView.snp.bottom)
            make.width.equalTo(scrollView.snp.width)
        }
        
        stackViewLabel.snp.makeConstraints { make in
            make.top.equalTo(contentView.snp.top)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
        }
        
        labelDate.snp.makeConstraints { make in
            make.width.equalTo(100)
        }
        
        titleMainLabel.snp.makeConstraints { make in
            make.top.equalTo(stackViewLabel.snp.bottom).inset(-16)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
            make.width.equalTo(contentView.snp.width)
        }
        
        imageViewPhoto.snp.makeConstraints { make in
            make.top.equalTo(titleMainLabel.snp.bottom).inset(-16)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
            make.width.equalTo(contentView.snp.width)
            make.height.equalTo(200)
        }
        
        textField.snp.makeConstraints { make in
            make.top.equalTo(imageViewPhoto.snp.bottom)
            make.leading.equalTo(contentView.snp.leading)
            make.trailing.equalTo(contentView.snp.trailing)
            make.bottom.equalTo(contentView.snp.bottom)
            make.height.equalTo(500)
        }
    }
}

extension DetailViewController: UITextViewDelegate {
    
    // MARK: - UITextViewDelegate
    func textViewDidChange(_ textView: UITextView) {
        print("Append text")
    }
}
