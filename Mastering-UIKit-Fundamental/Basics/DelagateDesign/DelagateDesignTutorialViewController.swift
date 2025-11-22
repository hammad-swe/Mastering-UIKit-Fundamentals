//
//  DelagateDesignTutorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 22/11/2025.
//

import UIKit

class DelagateDesignTutorialViewController: UIViewController {

    private var actionbtnView = ActionButtonView()
    
    private var actionlabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGroupedBackground
        
        view.addSubview(actionbtnView)
        actionbtnView.layer.shadowColor = UIColor.black.cgColor
        actionbtnView.translatesAutoresizingMaskIntoConstraints = false
        actionbtnView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        actionbtnView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        actionbtnView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        actionbtnView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true

        view.addSubview(actionlabel)
        actionlabel.translatesAutoresizingMaskIntoConstraints = false
        actionlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        actionlabel.topAnchor.constraint(equalTo: actionbtnView.bottomAnchor, constant: 16).isActive = true
        
        actionlabel.text = "Primary button tapped"
    }
}
#Preview{
    DelagateDesignTutorialViewController()
}
