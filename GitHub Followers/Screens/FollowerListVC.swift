//
//  FollowerListVC.swift
//  GitHub Followers
//
//  Created by pratik gupta on 30/04/21.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        NetworkManager.shared.getFollowers(for: userName, page: 1) { (followers, error) in
            
            guard let followers = followers else {
                self.presentGFAlertOnMainThread(title: "Bad Request", message: error?.rawValue ?? "", buttonTitle: "OK")
                return
            }
            
            print("Followers.count = \(followers.count)")
            print(followers)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
