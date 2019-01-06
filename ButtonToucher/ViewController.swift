//
//  ViewController.swift
//  ButtonToucher
//
//  Created by Joe Blau on 1/5/19.
//  Copyright © 2019 Joe Blau. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let oneButton: UIButton
    let twoButton: UIButton
    
    init() {
        oneButton = UIButton(type: .system)
        twoButton = UIButton(type: .system)
        super.init(nibName: nil, bundle: nil)
        oneButton.setTitle("Edit", for: .normal)
        oneButton.setImage(#imageLiteral(resourceName: "edit"), for: .normal)
        oneButton.tintColor = .black
        oneButton.addTarget(self, action: #selector(oneButtonPressed(sender:)), for: .touchUpInside)
        oneButton.sizeToFit()
        
        twoButton.setTitle("Favorite", for: .normal)
        twoButton.setImage(#imageLiteral(resourceName: "favorite"), for: .normal)
        twoButton.tintColor = .black
        twoButton.addTarget(self, action: #selector(twoButtonPressed(sender:)), for: .touchUpInside)
        twoButton.sizeToFit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(oneButton)
        oneButton.center = CGPoint(x: view.center.x, y: view.center.y - 100)
    
        view.addSubview(twoButton)
        twoButton.center = CGPoint(x: view.center.x, y: view.center.y + 100)
    }
    
    @objc func oneButtonPressed(sender: UIButton) {
        print(sender)
    }
    
    @objc func twoButtonPressed(sender: UIButton) {
        print(sender)
    }
}

