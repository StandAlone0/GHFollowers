//
//  GFButton.swift
//  GHFollowers
//
//  Created by Евгений on 11.09.2024.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        configuration = .tinted()
        configuration?.baseForegroundColor = .white
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
