//
//  GFAlertVC.swift
//  GitHub Followers
//
//  Created by pratik gupta on 30/04/21.
//

import Foundation

struct User: Codable {
    var login: String
    var avatarURL: String
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
