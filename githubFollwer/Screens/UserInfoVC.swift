//
//  UserInfoVC.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/15.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {

    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dissmissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                print(user)
                
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "무언가 잘못 되었습니다.", message: error.rawValue, buttonTitle: "Ok")
            }
            
        }
    }
    
    @objc func dissmissVC() {
        dismiss(animated: true)
    }
    
    
}
