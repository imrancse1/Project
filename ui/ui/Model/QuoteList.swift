//
//  QuoteList.swift
//  ui
//
//  Created by Imran Hossain on 20/1/20.
//  Copyright © 2020 Imran Hossain. All rights reserved.
//

import Foundation

class QuoteList {
    var quote = ""
    var author = ""
    var favouright = false
    
    func onFavourightPress() {
        favouright = !favouright
    }
    
}
