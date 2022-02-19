//
//  ViewController.swift
//  JsonEmir
//
//  Created by Эмир Кармышев on 19/2/22.
//

import UIKit

class MainController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var json1 = """
{
    "glossary": {
        "title": "example glossary",
  "GlossDiv": {
            "title": "S",
  "GlossList": {
                      "GlossEntry": {
                                      "ID": "SGML",
     "SortAs": "SGML",
     "GlossTerm": "Standard Generalized Markup Language",
     "Acronym": "SGML",
     "Abbrev": "ISO 8879:1986",
     "GlossDef": {
                                               "para": "A meta-markup language, used to create markup languages such as DocBook.",
      "GlossSeeAlso": ["GML", "XML"]
                    },
      "GlossSee": "markup"
                }
            }
        }
    }
}
"""
        let modelJson1 = try! JSONDecoder().decode(Json1.self, from: Data(json1.utf8))
         dump(modelJson1)
        
        var json2 = """
{
 "menu": {
      "id": "file",
      "value": "File",
      "popup": {
             "menuitem": [
                   {"value": "New", "onclick": "CreateNewDoc()"},
                   {"value": "Open", "onclick": "OpenDoc()"},
                   {"value": "Close", "onclick": "CloseDoc()"}
             ]
       }
   }
}

"""
        let modelJson2 = try! JSONDecoder().decode(Json2.self, from: Data(json2.utf8))
        dump(modelJson2)
        
        var json3 = """
{
  "widget": {
    "debug": "on",
    "window": {
        "title": "Sample Konfabulator Widget",
        "name": "main_window",
        "width": 500,
        "height": 500
    },
    "image": {
        "src": "Images/Sun.png",
        "name": "sun1",
        "hOffset": 250,
        "vOffset": 250,
        "alignment": "center"
    },
    "text": {
        "data": "Click Here",
        "size": 36,
        "style": "bold",
        "name": "text1",
        "hOffset": 250,
        "vOffset": 100,
        "alignment": "center",
        "onMouseUp": "sun1.opacity = (sun1.opacity / 100) * 90;"
    }
  }
}
"""
        let modelJson3 = try! JSONDecoder().decode(Json3.self, from: Data(json3.utf8))
        dump(modelJson3)
    }
    
    
}


