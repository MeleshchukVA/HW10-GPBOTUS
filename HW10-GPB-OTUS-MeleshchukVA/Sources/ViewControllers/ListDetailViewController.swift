//
//  ListDetailViewController.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 18.10.2022.
//

import UIKit

class ListDetailViewController: UIViewController {
    
    // MARK: - Properties
    
    var list: List?
    
    // MARK: - Init
    
    init(list: List) {
        super.init(nibName: nil, bundle: nil)
        self.list = list
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

