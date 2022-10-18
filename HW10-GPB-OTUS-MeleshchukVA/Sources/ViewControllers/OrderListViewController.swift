//
//  OrderListViewController.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import UIKit

final class OrderListViewController: UIViewController {
    
    // MARK: - Properties
    
    let tableView = UITableView()

    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setubTableView()
    }
}

// MARK: - Private methods

private extension OrderListViewController {
    
    func setupView() {
        view.backgroundColor = .systemBackground
        title = "Big Smoke Order"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setubTableView() {
        view.addSubview(tableView)
        
        tableView.frame = view.bounds
        tableView.rowHeight = 100
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(OrderTableViewCell.self, forCellReuseIdentifier: OrderTableViewCell.reuseID)
    }
}

// MARK: - UITableViewDataSource

extension OrderListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: OrderTableViewCell.reuseID) as? OrderTableViewCell
        else {
            let cell = OrderTableViewCell(style: .default, reuseIdentifier: OrderTableViewCell.reuseID)
            return cell
        }
        
        let order = orders[indexPath.row]
        cell.setupCell(order: order)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension OrderListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let order = orders[indexPath.row]
        let destinationViewController = OrderDetailViewController(order: order)
        navigationController?.pushViewController(destinationViewController, animated: true)
    }
}
