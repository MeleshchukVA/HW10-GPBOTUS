//
//  Order.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 19.10.2022.
//

import Foundation

struct Order: Codable {
    let title: String
    let description: String
}

let orders: [Order] = [
    Order(title: "Two number 9's", description: "#9, #9"),
    Order(title: "A number 9 large", description: "#9L"),
    Order(title: "A number 6 with extra dip", description: "#6ED"),
    Order(title: "A number 7", description: "#7"),
    Order(title: "Two number 45, one with cheese", description: "#45, #45C"),
    Order(title: "And a large soda", description: "#LS"),
]
