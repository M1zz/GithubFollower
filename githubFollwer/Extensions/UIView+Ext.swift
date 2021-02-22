//
//  UIView+Ext.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/21.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import UIKit

extension UIView {
    
    func pintoEdges(of superview: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: superview.topAnchor),
            leadingAnchor.constraint(equalTo: superview.leadingAnchor),
            trailingAnchor.constraint(equalTo: superview.trailingAnchor),
            bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        ])
    }
    
    
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
