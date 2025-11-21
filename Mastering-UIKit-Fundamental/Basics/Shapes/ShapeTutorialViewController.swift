//
//  ShapeTutorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 21/11/2025.
//

import UIKit

class ShapeTutorialViewController: UIViewController {
    
    private var rect: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 16
        view.backgroundColor = .systemRed
        return view
        
    }()
    
    private var circle = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
        view.addSubview(circle)
        circle.backgroundColor = .systemBlue
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        circle.topAnchor.constraint(equalTo: rect.bottomAnchor, constant: 12).isActive = true
        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        circle.layer.cornerRadius = 100 / 2
        
    }
}
#Preview {
    ShapeTutorialViewController()
}
