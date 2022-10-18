//
//  ListViewController.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 18.10.2022.
//

import UIKit

final class ListViewController: UIViewController {
    
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

private extension ListViewController {
    
    func setupView() {
        view.backgroundColor = .systemBlue
        title = "Big Smoke Order"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func setubTableView() {
        view.addSubview(tableView)
        
        tableView.frame = view.bounds
        tableView.rowHeight = 120
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(ListTableViewCell.self, forCellReuseIdentifier: ListTableViewCell.reuseID)
    }
}

// MARK: - UITableViewDataSource

extension ListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lists.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: ListTableViewCell.reuseID) as? ListTableViewCell
        else {
            let cell = ListTableViewCell(style: .default, reuseIdentifier: ListTableViewCell.reuseID)
            return cell
        }
        
        let list = lists[indexPath.row]
        cell.setupCell(list: list)
        return cell
    }
}

// MARK: - UITableViewDelegate

extension ListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let list = lists[indexPath.row]
        let destinationViewController = ListDetailViewController(list: list)
        let navigationController = UINavigationController(rootViewController: destinationViewController)
        present(navigationController, animated: true)
    }
}
