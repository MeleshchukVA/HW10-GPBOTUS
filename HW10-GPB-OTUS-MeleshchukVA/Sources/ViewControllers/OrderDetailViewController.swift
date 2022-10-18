//
//  OrderDetailViewController.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class OrderDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var order: Order?
    let titleLabel = BaseLabel(textColor: .label, textAlignment: .left, fontSize: 30, fontWeight: .bold)
    let descriptionLabel = BaseLabel(textColor: .label, textAlignment: .center, fontSize: 100, fontWeight: .semibold)
    
    // MARK: - Init
    
    init(order: Order) {
        super.init(nibName: nil, bundle: nil)
        self.order = order
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupUIElements()
        setupSubviews()
        setupLayout()
    }
}

// MARK: - Private methods

private extension OrderDetailViewController {
    
    func setupView() {
        view.backgroundColor = .systemBackground
    }
    
    func setupUIElements() {
        titleLabel.text = order?.title
        descriptionLabel.text = order?.description
    }
    
    func setupSubviews() {
        let itemViews: [UIView] = [titleLabel, descriptionLabel]
        
        for itemView in itemViews {
            view.addSubview(itemView)
            itemView.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func setupLayout() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 80),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            titleLabel.heightAnchor.constraint(equalToConstant: 90),
            
            descriptionLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.widthAnchor.constraint(equalTo: view.widthAnchor),
            descriptionLabel.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
    }
}
