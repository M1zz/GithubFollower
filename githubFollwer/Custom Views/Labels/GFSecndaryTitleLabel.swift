//
//  GFSecndaryTitleLabel.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/16.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import UIKit

class GFSecndaryTitleLabel: UILabel {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(fontsize: CGFloat) {
        super.init(frame : .zero)
        font = UIFont.systemFont(ofSize: fontsize, weight: .medium)
        configure()
    }
    
    
    private func configure() {
        textColor = .secondaryLabel
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.90
        lineBreakMode = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }

}
