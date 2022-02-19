//
//  ModelJson3.swift
//  JsonEmir
//
//  Created by Эмир Кармышев on 19/2/22.
//

import Foundation

class Json3: Codable{
    var widget: Widget?
    var debug: String? = nil
}
class Widget: Codable{
    var window: Window?
    var image: Image?
    var text: Text?
}
class Window: Codable{
    var title: String? = nil
    var name: String? = nil
    var width: Int? = nil
    var height: Int? = nil
}
class Image: Codable{
    var src: String? = nil
    var name: String? = nil
    var hOffset: Int? = nil
    var vOffset: Int? = nil
    var alignment: String? = nil
}
class Text: Codable{
    var data: String? = nil
    var size: Int? = nil
    var style: String? = nil
    var name: String? = nil
    var hOffset: Int? = nil
    var vOffset: Int? = nil
    var alignment: String? = nil
    var onMouseUp: String? = nil
}
