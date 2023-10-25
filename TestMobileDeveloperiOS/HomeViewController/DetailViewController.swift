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
        let scrollView = UIScrollView()
        scrollView.contentSize = CGSize(width: view.frame.width, height: view.frame.height)
        scrollView.backgroundColor = .LTech.blueColor
        return scrollView
    }()
    
    private lazy var stackViewLabel: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.distribution = .fill
        stack.axis = .horizontal
        stack.spacing = 5
        return stack
    }()

    private lazy var stackViewDetail: UIStackView = {
        let stack = UIStackView()
        stack.alignment = .center
        stack.distribution = .fill
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
    //MARK: - User Interface
    private lazy var labelDate: UILabel = {
        let label = UILabel()
        label.text = "05 декабря"
        label.textColor = .LTech.grayColor
        return label
    }()
    
    private lazy var labelTime: UILabel = {
        let label = UILabel()
        label.text = "19:40"
        label.textColor = .LTech.grayColor
        return label
    }()
    
    private lazy var titleMainLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Отчёт Лаборатории реактивного движения (JPL)"
        label.textColor = .LTech.blackColor
        return label
    }()
    
    private lazy var imageViewPhoto: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "link")
        return image
    }()
    
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        customButton()
        setViews()
        setConstrains()
        view.backgroundColor = .LTech.whiteColor
    }
    
    //MARK: - Set Views
    private func setViews() {
        
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
    }
}
