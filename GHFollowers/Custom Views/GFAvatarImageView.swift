//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Евгений on 19.09.2024.
//

import UIKit
import SwiftUI

class GFAvatarImageView: UIImageView {

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
    }
    
}
