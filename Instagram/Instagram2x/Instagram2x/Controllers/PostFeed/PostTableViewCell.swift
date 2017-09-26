//
//  PostTableViewCell.swift
//  Instagram2x
//
//  Created by Héctor Cuevas Morfín on 9/26/17.
//  Copyright © 2017 CloudApp. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    private lazy var topView: TopPostView = {
        let t = TopPostView()
        return t
    }()
    
    private lazy var postImage: UIImageView = {
        let i = UIImageView(frame: .zero)
        i.translatesAutoresizingMaskIntoConstraints = false
        i.backgroundColor = .red
        return i
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        //contentView.addSubview(topView)
        [topView, postImage].forEach(contentView.addSubview)
        
        NSLayoutConstraint.activate([
            topView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            topView.topAnchor.constraint(equalTo: contentView.topAnchor),
            topView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            
            postImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            postImage.topAnchor.constraint(equalTo: topView.bottomAnchor),
            postImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            postImage.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            postImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
            
            ])
    }
}
