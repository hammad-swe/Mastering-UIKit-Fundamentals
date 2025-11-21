//
//  ButtonTUtorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 20/11/2025.
//

import UIKit

class ButtonTUtorialViewController: UIViewController {
    
    private lazy var showNamebtn : UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Show Me", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
//        button.addTarget(self, action: #selector(handleShowName), for: .touchUpInside)
        return button
        
    }()
    
    private var nameLabel : UILabel = {
        let label = UILabel()
        label.text = "Hi Hammad"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isHidden = true
    return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showNamebtn.addTarget(self, action: #selector(handleShowName), for: .touchUpInside)
        
        view.addSubview(showNamebtn)
        showNamebtn.widthAnchor.constraint(equalToConstant: 350).isActive = true
        showNamebtn.heightAnchor.constraint(equalToConstant: 44).isActive = true
        showNamebtn.backgroundColor = .systemBlue
        showNamebtn.layer.cornerRadius = 10
        showNamebtn.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        showNamebtn.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(nameLabel)
        nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: showNamebtn.bottomAnchor, constant: 8).isActive = true
        
    }
    @objc func handleShowName(){
        nameLabel.isHidden.toggle()
        let title = nameLabel.isHidden ? "Show Name" : "Hide Name"
        showNamebtn.setTitle(title, for: .normal)
    }
}

#Preview{
    ButtonTUtorialViewController()
}
