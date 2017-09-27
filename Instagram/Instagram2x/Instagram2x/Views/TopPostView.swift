//
//  TopPostView.swift
//  Instagram2x
//
//  Created by Héctor Cuevas Morfín on 9/26/17.
//  Copyright © 2017 CloudApp. All rights reserved.
//

import UIKit

class TopPostView: UIView {
    
    lazy var authorImage: UIImageView = {
        let i = UIImageView(frame: .zero)
        i.translatesAutoresizingMaskIntoConstraints = false
        i.backgroundColor = .black
        i.layer.cornerRadius = 25/2
        i.layer.masksToBounds = true
        return i
    }()
    
    
    lazy var authorNameButton: UIButton = {
       let b = UIButton(frame: .zero)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        b.setTitle("hector69", for: .normal)
        b.setTitleColor(.black, for: .normal)
        b.titleLabel?.font = .boldSystemFont(ofSize: 12)
        
        return b
    }()
    
    lazy var contextualMenuButton: UIButton = {
        let b = UIButton(frame: .zero)
        b.translatesAutoresizingMaskIntoConstraints = false
        b.setTitleColor(.black, for: .normal)
        b.setTitle("...", for: .normal)
        return b
    }()
    
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView()  {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(authorImage)
        addSubview(authorNameButton)
        addSubview(contextualMenuButton)
        
        NSLayoutConstraint.activate([
            authorImage.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            authorImage.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            authorImage.widthAnchor.constraint(equalToConstant: 25),
            authorImage.heightAnchor.constraint(equalToConstant: 25),
            authorImage.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor),

            authorNameButton.leadingAnchor.constraint(equalTo: authorImage.trailingAnchor, constant: 8),
            authorNameButton.centerYAnchor.constraint(equalTo: authorImage.centerYAnchor),
            
            contextualMenuButton.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            contextualMenuButton.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor)
            ])
    }
    
}
