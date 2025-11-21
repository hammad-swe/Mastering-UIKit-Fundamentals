//
//  StackTutorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 21/11/2025.
//

import UIKit

class StackTutorialViewController: UIViewController {
    
    private var stackview: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        let rect1 = createRectangle()
        rect1.backgroundColor = .systemRed
        
        let rect2 = createRectangle()
        rect2.backgroundColor = .systemBlue
        
        let rect3 = createRectangle()
        rect3.backgroundColor = .systemGreen
        
        stackview.addArrangedSubview(rect1)
        stackview.addArrangedSubview(rect2)
        stackview.addArrangedSubview(rect3)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackview)
        stackview.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        stackview.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        
       
    }
    private func createRectangle () -> UIView{
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: 200).isActive = true
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        view.layer.cornerRadius = 16
        return view
    }
}
#Preview{
    StackTutorialViewController()
}
