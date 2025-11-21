//
//  ImageTutorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 21/11/2025.
//

import UIKit

class ImageTutorialViewController: UIViewController {
    
    private var imageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.tintColor = .red
        imageView.image = UIImage(systemName: "apple.logo")
        
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        imageView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}

#Preview{
    ImageTutorialViewController()
}
