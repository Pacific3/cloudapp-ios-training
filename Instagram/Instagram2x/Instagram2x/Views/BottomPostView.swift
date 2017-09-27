//
//  BottomPostView.swift
//  Instagram2x
//
//  Created by Alfredo Fregoso Arreguin on 26/09/17.
//  Copyright © 2017 CloudApp. All rights reserved.
//

import UIKit

class BottomPostView: UIView {

    lazy var likeButton: UIButton = {
        let l = UIButton(frame: .zero)
        l.translatesAutoresizingMaskIntoConstraints = false
        //l.setImage(, for: .normal)
        l.setImage(#imageLiteral(resourceName: "heart"), for: .normal)
 
        return l
    }()
    
    lazy var commentButton: UIButton = {
        let c = UIButton(frame: .zero)
        c.translatesAutoresizingMaskIntoConstraints = false
        c.setImage(#imageLiteral(resourceName: "comment"), for: .normal)
        
        return c
    }()
    
    lazy var dMButton: UIButton = {
        let d = UIButton(frame: .zero)
        d.translatesAutoresizingMaskIntoConstraints = false
        d.setImage(#imageLiteral(resourceName: "direct"), for: .normal)
        
        return d
    }()
    
    lazy var saveButton: UIButton = {
        let s = UIButton(frame: .zero)
        s.translatesAutoresizingMaskIntoConstraints = false
        s.setImage(#imageLiteral(resourceName: "flag"), for: .normal)
        
        return s
    }()
    
    lazy var numberLikeButton: UIButton = {
        let n = UIButton(frame: .zero)
        n.translatesAutoresizingMaskIntoConstraints = false
        n.setTitle("85 Me gusta", for:.normal)
        n.setTitleColor(.black, for: .normal)
        n.titleLabel?.font = .boldSystemFont(ofSize: 12)
        
        return n
    }()
    
    init() {
        super.init(frame: .zero)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(likeButton)
        addSubview(commentButton)
        addSubview(dMButton)
        addSubview(saveButton)
        addSubview(numberLikeButton)
        
        NSLayoutConstraint.activate([
            
            likeButton.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            likeButton.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            likeButton.widthAnchor.constraint(equalToConstant: 25.0),
            likeButton.heightAnchor.constraint(equalToConstant: 25.0),
            likeButton.bottomAnchor.constraint(equalTo: numberLikeButton.topAnchor),
            
            commentButton.leadingAnchor.constraint(equalTo: likeButton.trailingAnchor, constant: 10),
            commentButton.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor ),
            
            
            dMButton.leadingAnchor.constraint(equalTo: commentButton.trailingAnchor, constant: 10),
            dMButton.centerYAnchor.constraint(equalTo: commentButton.centerYAnchor),
            
            saveButton.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor),
            saveButton.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            
            //numberLikeButton.topAnchor.constraint(equalTo: likeButton.bottomAnchor),
            numberLikeButton.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor),
            numberLikeButton.bottomAnchor.constraint(equalTo: layoutMarginsGuide.bottomAnchor)
  
            ])
        
    }
}
