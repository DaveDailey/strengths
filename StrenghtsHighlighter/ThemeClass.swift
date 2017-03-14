//
//  ThemeClass.swift
//  StrenghtsHighlighter
//
//  Created by DAVID DAILEY on 3/12/17.
//  Copyright © 2017 davedailey. All rights reserved.
//

import Foundation

class Theme {
    private var _name: String!
    private var _description: String!
    
    var name: String {
        return _name
    }
    
    var description: String {
        return _description
    }
    
    init(name: String, description: String) {
        _name = name
        _description = description
        
    }
}
