//
//  ViewController.swift
//  Instagram2x
//
//  Created by Héctor Cuevas Morfín on 9/26/17.
//  Copyright © 2017 CloudApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    lazy var tableView: UITableView = {
        let t = UITableView(frame: .zero)
        t.translatesAutoresizingMaskIntoConstraints = false
        t.register(PostTableViewCell.self, forCellReuseIdentifier: "cell")
        t.delegate = self
        t.dataSource = self
        return t
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setUpView()  {
        view.backgroundColor = .white
        title = "Instagram"
        view.addSubview(tableView)
        
//        let constraint = NSLayoutConstraint(item: self.tableView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
//
//        let views = [
//            "table": self.tableView
//        ]
//
//        var constrainst = [NSLayoutConstraint]()
//
//            constrainst += NSLayoutConstraint.constraints(
//            withVisualFormat: "V:|[table]-[button]|",
//            options: NSLayoutFormatOptions(rawValue: 0),
//            metrics: nil,
//            views: views)
//        constrainst += NSLayoutConstraint.constraints(
//            withVisualFormat: "H:|[table(==button)]|",
//            options: NSLayoutFormatOptions(rawValue: 0),
//            metrics: nil,
//            views: views)
//
        
        
        
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor)
            ])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! PostTableViewCell
        cell.selectionStyle = .none
        return cell
        
    }
}
