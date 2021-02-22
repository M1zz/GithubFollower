//
//  UITableView+Ext.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/22.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
