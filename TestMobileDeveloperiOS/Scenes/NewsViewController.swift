//
//  ViewController.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 24.10.2023.
//

import UIKit
import SnapKit

enum NewsViewControllerType {
    case home
    case likes
}

final class NewsViewController: UIViewController {
    
    //MARK: - UI
    private lazy var defaultButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .LTech.customWhiteColor
        button.setImage(.LTechImage.defaultButton, for: .normal)
        button.addTarget(self, action: #selector(defaultButtonTapped), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Table View
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.rowHeight = 100
        tableView.separatorStyle = .singleLine
        tableView.showsVerticalScrollIndicator = false
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(NewsTableViewCell.self, forCellReuseIdentifier: Theme.newsTableViewCell)
        return tableView
    }()
    
    var type: NewsViewControllerType = .home
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setConstrains()
        configureItems()
        view.backgroundColor = .LTech.customWhiteColor
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.addAutoLayoutSubviews(defaultButton, tableView)
    }
    
    //MARK: - Configure Items
    private func configureItems() {
        let customBarButtonItem = UIBarButtonItem(
            image: .LTechImage.update,
            style: .plain,
            target: self,
            action: #selector(updateButtonTapped))
        
        navigationItem.title = "Лента новостей"
        navigationItem.rightBarButtonItem = customBarButtonItem
        
    }
    
    //MARK: -  @objc Private Func
    @objc private func defaultButtonTapped() {
        print("defaultButtonTapped")
    }
    
    @objc private func updateButtonTapped() {
        print("updateButtonTapped")
    }
}

//MARK: - Set Constrains
extension NewsViewController {
    private func setConstrains() {
        defaultButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(100)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(227)
            make.bottom.equalTo(tableView.snp.top)
            make.height.equalTo(40)
        }
        
        tableView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(16)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
}

//MARK: - UITableViewDataSource
extension NewsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch type {
        case .home:
            return 10
        case .likes:
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: Theme.newsTableViewCell, for: indexPath) as? NewsTableViewCell else { return UITableViewCell() }
        switch type {
        case .home: break
//            let model = [indexPath.row]
//            output.rows[indexPath.row]
        case .likes: break
            
        }
        return cell
    }
}

//MARK: - UITableViewDelegate
extension NewsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(DetailViewController(), animated: true)
    }
}
