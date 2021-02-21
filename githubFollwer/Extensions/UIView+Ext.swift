//
//  UIView+Ext.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/21.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views { addSubview(view) }
    }
}
