//
//  FavoritesListVS.swift
//  githubFollwer
//
//  Created by 이현호 on 2020/08/08.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        
        PersistenceManager.retrieveFavorites { (result) in
            switch result {
            case .success(let favorites):
                print(favorites)
            case .failure(let error):
                break
            }
        }
    }


}
