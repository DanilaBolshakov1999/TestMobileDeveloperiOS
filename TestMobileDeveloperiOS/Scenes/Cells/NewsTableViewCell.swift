//
//  NewsTableViewCell.swift
//  TestMobileDeveloperiOS
//
//  Created by Danila Bolshakov on 28.10.2023.
//

import UIKit

final class NewsTableViewCell: UITableViewCell {
    
    //MARK: - UI
    private lazy var logoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = .logoEmblem
        return imageView
    }()
    
    private lazy var labelsStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, descriptionLabel, dateLabel])
        stackView.axis = .vertical
        return stackView
    }()
    
    private lazy var dateLabel: UILabel = {
        let label = UILabel()
        label.text = "05 декабря, 19:40"
        return label
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "05 декабря, 19:40"
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "05 декабря, 19:40"
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        contentView.addAutoLayoutSubviews(logoImageView, labelsStackView)
    }
}

extension NewsTableViewCell {
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 17),
            logoImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            logoImageView.widthAnchor.constraint(equalToConstant: 80),
            logoImageView.heightAnchor.constraint(equalToConstant: 85),
            
            labelsStackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 17),
            labelsStackView.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: 16),
            labelsStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            labelsStackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }
}
