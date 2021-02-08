//
//  ErrorMessage.swift
//  githubFollwer
//
//  Created by 이현호 on 2021/02/08.
//  Copyright © 2021 tempYsoup. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "이 유저네임은 잘못된 요청입니다. 다시 요청해주세요."
    case unableToComplete = "요청을 완료할 수 없습니다. 네트워크 연결을 확인해주세요."
    case invalidResponse = "유효하지 않은 서버로 부터의 응답입니다. 다시 요청해주세요."
    case invalidData = "서버로 받은 데이터가 유효하지 않습니다. 다시 요청해주세요."
}
