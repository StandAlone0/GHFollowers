//
//  GFTextField.swift
//  GHFollowers
//
//  Created by Евгений on 11.09.2024.
//

import UIKit

class GFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        borderStyle = .roundedRect
        tintColor = .label
        textAlignment = .center
        backgroundColor = .tertiarySystemBackground
        autocorrectionType = .no
        returnKeyType = .go
        placeholder = "Enter a username"
    }
    
}


