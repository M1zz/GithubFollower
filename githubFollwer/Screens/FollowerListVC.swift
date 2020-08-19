//
//  FollowerListVSViewController.swift
//  githubFollwer
//
//  Created by hyunho lee on 2020/08/17.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
}
