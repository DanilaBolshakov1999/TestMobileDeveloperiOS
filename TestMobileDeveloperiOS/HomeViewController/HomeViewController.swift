//
//  ViewController.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 24.10.2023.
//

import UIKit
import SnapKit

final class HomeViewController: UIViewController {
    
    //MARK: - UI
    private lazy var defaultButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "defaultButton"), for: .normal)
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
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }()

    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setViews()
        setConstrains()
        configureItems()
        view.backgroundColor = .white
    }
    
    //MARK: - Set Views
    private func setViews() {
        view.addSubview(defaultButton)
        view.addSubview(tableView)
    }
    
    //MARK: - Configure Items
    private func configureItems() {
        let customBarButtonItem = UIBarButtonItem(
            image: UIImage(named: "update"),
            style: .plain,
            target: self,
            action: nil)
        navigationItem.title = "Лента новостей"
        navigationItem.rightBarButtonItem = customBarButtonItem
       
    }
}

//MARK: - Set Constrains
extension HomeViewController {
    private func setConstrains() {
        defaultButton.snp.makeConstraints { make in
            make.top.equalToSuperview().inset(90)
            make.leading.equalToSuperview().inset(16)
            make.trailing.equalToSuperview().inset(227)
            make.bottom.equalTo(tableView.snp.top)
        }
        
        tableView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(16)
            make.leading.trailing.equalToSuperview()
        }
    }
}

//MARK: - UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        return cell
    }
}

//MARK: - UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        navigationController?.pushViewController(DetailViewController(), animated: true)
    }
}
