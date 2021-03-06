//
//  Link.swift
//  weLearn
//
//  Created by Marty Avedon on 3/4/17.
//  Copyright © 2017 Victor Zhong. All rights reserved.
//

import Foundation

class Link {
    
    var url: String
    var description: String
    
    // meta data - this way we track who made what link, and when
    var author: String
    var studentKey: String
    var date: String
    
    init?(url: String, author: String, studentKey: String, description: String) {
        let currentDate = Date()
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "mm/dd/yy hh:mm:ss"
        
        self.description = description
        self.url = url
        self.author = author
        self.studentKey = studentKey
        self.date = dateFormatter.string(from: currentDate)
        
    }
    
    convenience init?(fromDict: [String : Any]) {
        guard let url = fromDict["url"] as? String,
            let name = fromDict["studentName"] as? String,
            let key = fromDict["studentKey"] as? String,
            let description = fromDict["urlDescription"] as? String else { return nil }
        self.init(url: url, author: name, studentKey: key, description: description)
    }
    
    func blame() {
         print("I was made by \(self.author) at \(self.date)")
    }
}
