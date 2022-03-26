//
//  Model.swift
//  HWLogIn
//
//  Created by Ян Таше on 26.03.2022.
//

import Foundation

struct User {
    var userName: String
    var password: String
}

var arrayOfUsers: [User] = [User(userName: "admin", password: "admin")]

func addNewUser(userName: String, password: String) {
    arrayOfUsers.append(User(userName: userName, password: password))
}

func isUserExist(userName: String?, password: String?) -> Bool {
    var userExist: Bool = false
    for user in arrayOfUsers {
        if let us = userName, let pas = password {
            if user.userName == us && user.password == pas {
                userExist = true
            } else {
            userExist = false
              }
        }
    }
    return userExist
}
