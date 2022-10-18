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

        view.backgroundColor = .systemGreen
    }
}
