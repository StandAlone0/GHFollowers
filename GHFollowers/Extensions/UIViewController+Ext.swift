//
//  UIViewController+Ext.swift
//  GHFollowers
//
//  Created by Евгений on 12.09.2024.
//

import UIKit

extension UIViewController {
    func presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GFAlertVC(alertTitle: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen // appear not as a sheet above the screen
            alertVC.modalTransitionStyle = .crossDissolve // appear smoothly, but not blinking
            self.present(alertVC, animated: true)
        }
    }
}
