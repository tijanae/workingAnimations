//
//  ViewController.swift
//  animations-intro
//
//  Created by David Rifkin on 10/11/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    lazy var myButton: UIButton = {
        let button = UIButton(frame: CGRect(x: self.view.frame.midX, y: 100, width: 50, height: 50))
        button.setTitle("Press Me!", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        button.layer.cornerRadius =  button.frame.width / 2
        return button
    }()
    
    lazy var myView: UIView = {
        let view = UIView(frame: CGRect(x: (self.myButton.frame.minX - myButton.frame.width / 2) , y: self.myButton.frame.minY + 100, width: 100, height: 100))
        view.backgroundColor = .green
        view.layer.cornerRadius = view.frame.height / 2
        return view
    }()
    /*
    @objc func buttonPressed(sender: UIButton) {
        let alert = UIAlertController.init(title: nil, message: "You pressed a button", preferredStyle: .alert)
        let ok = UIAlertAction(title: "ok", style: .destructive, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true)
    }
 
 */
    
    @objc func buttonPressed(sender: UIButton) {
        UIView.animate(withDuration: 1.5) {
//            self.myView.frame.origin.y += 200
            if self.myView.frame.origin.y <600 {
                self.myView.frame.origin.y += 200
            } else {
                self.myView.frame = CGRect(x: self.myView.frame.minX - self.myButton.frame.width /2, y: <#T##CGFloat#>, width: <#T##CGFloat#>, height: <#T##CGFloat#>)
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.view.addSubview(myView)
        self.view.addSubview(myButton)
    }
}
