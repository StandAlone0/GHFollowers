//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Евгений on 11.09.2024.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true

        NetworkManager.shared.getFollowers(for: username, page: 1) { result in
            
            switch result {
            case .success(let followes):
                print("Followers count: \(followes.count)")
                print("Followers: \(followes)")
                break
            case .failure(let errorMessage):
                self.presentGFAlertOnMainThread(title: "Error", message: errorMessage.rawValue, buttonTitle: "Ok")
                break
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }
}
