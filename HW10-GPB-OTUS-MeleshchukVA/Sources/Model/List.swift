//
//  List.swift
//  HW10-GPB-OTUS-MeleshchukVA
//
//  Created by Владимир Мелещук on 18.10.2022.
//

import Foundation

struct List: Codable {
    let title: String
    let description: String
}

let lists: [List] = [
    List(title: "Two number 9's", description: "#9, #9"),
    List(title: "A number 9 large", description: "#9L"),
    List(title: "A number 6 with extra dip", description: "#6ED"),
    List(title: "A number 7", description: "#7"),
    List(title: "Two number 45, one with cheese", description: "#45, #45C"),
    List(title: "And a large soda", description: "#LS"),
]
