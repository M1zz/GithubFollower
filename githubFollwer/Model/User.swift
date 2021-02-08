//
//  User.swift
//  githubFollwer
//
//  Created by hyunho lee on 2020/08/19.
//  Copyright © 2020 tempYsoup. All rights reserved.
//

import Foundation

struct User: Decodable {
    var login: String
    var avatarUrl: String
    var name: String?
    var location: String?
    var bio: String?
    var publicRepos: Int
    var publicGists: Int
    var htmlUrl: String
    var following: Int
    var followers: Int
    var createdAt: String
}
