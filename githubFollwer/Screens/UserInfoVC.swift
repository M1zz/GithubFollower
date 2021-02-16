//
//  UserInfoVC.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/15.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import UIKit

class UserInfoVC: UIViewController {

    let headerView = UIView()
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dissmissVC))
        navigationItem.rightBarButtonItem = doneButton
        
        layoutUI()
        
        NetworkManager.shared.getUserInfo(for: username) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let user):
                DispatchQueue.main.async {
                    self.add(childVC: GFUserInfoHeaderVC(user: user), to: self.headerView)
                }

            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "무언가 잘못 되었습니다.", message: error.rawValue, buttonTitle: "Ok")
            }
            
        }
    }
    
    func layoutUI() {
        view.addSubview(headerView)
        headerView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.heightAnchor.constraint(equalToConstant: 180)
        ])
    }
    
    func add(childVC: UIViewController, to containerView: UIView) {
        addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
        childVC.didMove(toParent: self)
    }
    
    @objc func dissmissVC() {
        dismiss(animated: true)
    }
    
    
}
