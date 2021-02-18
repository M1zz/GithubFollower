//
//  Date+Ext.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/17.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }
}
