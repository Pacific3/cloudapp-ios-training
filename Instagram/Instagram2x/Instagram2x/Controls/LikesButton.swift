//
//  LikesButton.swift
//  Instagram2x
//
//  Created by Alfredo Fregoso Arreguin on 27/09/17.
//  Copyright © 2017 CloudApp. All rights reserved.
//

import UIKit

class LikesButton: UIButton {

    var numberOfLikes: NSNumber = 0{
        didSet {
           setTitle("\(numberOfLikes) Me gusta", for: .normal)
        }
    }
    init(likes:NSNumber = 0) {
        super.init(frame: .zero)
        numberOfLikes = likes
        setUpButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpButton () {
        translatesAutoresizingMaskIntoConstraints = false
        setTitleColor(.black, for: .normal)
        titleLabel?.font = .boldSystemFont(ofSize: 12)
    }
}


