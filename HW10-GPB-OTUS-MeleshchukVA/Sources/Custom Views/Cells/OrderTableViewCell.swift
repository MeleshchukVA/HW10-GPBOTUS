//
//  OrderTableViewCell.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class OrderTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    
    let titleLabel = BaseLabel(textColor: .label, textAlignment: .left, fontSize: 20, fontWeight: .bold)
    let descriptionLabel = BaseLabel(textColor: .secondaryLabel, textAlignment: .left, fontSize: 16, fontWeight: .regular)
    
    static let reuseID = "ListTableViewCell"
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - Public methods

extension OrderTableViewCell {
    
    func setupCell(order: Order) {
        titleLabel.text = order.title
        descriptionLabel.text = order.description
    }
}

// MARK: - Private methods

private extension OrderTableViewCell {
    
    func configure() {
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        
        accessoryType = .disclosureIndicator
        let padding: CGFloat = 12

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            descriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            descriptionLabel.heightAnchor.constraint(equalToConstant: 26),
        ])
    }
}
