//
//  TextfieldTutorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 21/11/2025.
//

import UIKit

class TextfieldTutorialViewController: UIViewController {

    private var textfield: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Search...."
        tf.keyboardType = .emailAddress
        tf.borderStyle = .roundedRect
        tf.font = UIFont.systemFont(ofSize: 14)
        return tf
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
       view.addSubview(textfield)
       textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    

}
#Preview {
    TextfieldTutorialViewController()
}
