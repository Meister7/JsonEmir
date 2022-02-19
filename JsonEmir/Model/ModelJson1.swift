//
//  Model.swift
//  JsonEmir
//
//  Created by Эмир Кармышев on 19/2/22.
//

import Foundation

class Json1: Codable{
    var glossary: Glossary?
}
class Glossary: Codable{
    var title: String? = nil
    var glossDiv: GlossDiv?
enum CodingKeys: String, CodingKey {
    case glossDiv = "GlossDiv"
    }
}
class GlossDiv: Codable{
    var title: String? = nil
    var glossList: GlossList?
enum CodingKeys: String, CodingKey {
    case glossList = "GlossList"
   }
}
class GlossList: Codable{
    var glossEntry: GlossEntry?
enum CodingKeys: String, CodingKey {
    case glossEntry = "GlossEntry"
   }
}
class GlossEntry: Codable {
    var id: String? = nil
    var sortAs: String? = nil
    var glossTerm: String? = nil
    var acronym: String? = nil
    var abbrev: String? = nil
    var glossDef: GlossDef?
    var glossSee: String? = nil
enum CodingKeys: String, CodingKey {
    case id = "iD"
    case sortAs = "SortAs"
    case glossTerm = "GlossTerm"
    case acronym = "Acronym"
    case abbrev = "Abbrev"
    case glossDef = "GlossDef"
    case glossSee = "GlossSee"
   }
}
class GlossDef: Codable{
    var para: String? = nil
    var glossSeeAlso: [String?]
enum CodingKeys: String, CodingKey {
    case para = "para"
    case glossSeeAlso = "GlossSeeAlso"
   }
}
