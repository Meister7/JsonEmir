//
//  ModelJson2.swift
//  JsonEmir
//
//  Created by Эмир Кармышев on 19/2/22.
//

import Foundation

class Json2: Codable {
    let menu: Menu?
    var id: String? = nil
    var value: String? = nil
}
class Menu: Codable {
    let popup: Popup?
}
class Popup: Codable {
    var menuitem: [MenuItem] = []
}
class MenuItem: Codable {
    let value: String?
    let onClick: String?
}
