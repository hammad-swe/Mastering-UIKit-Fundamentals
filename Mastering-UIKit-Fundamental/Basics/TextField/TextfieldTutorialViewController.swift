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
        tf.returnKeyType = .search
        tf.font = UIFont.systemFont(ofSize: 14)
        tf.returnKeyType = .search
        return tf
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        textfield.delegate = self
        textfield.addTarget(self, action: #selector(onEditingChanged), for: .editingChanged)
        
       view.addSubview(textfield)
       textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textfield.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        textfield.widthAnchor.constraint(equalToConstant: view.frame.width - 64).isActive = true
    }
    @objc func onEditingChanged(_ sender: UITextField){
        print("Debug: Text field text \(sender.text ?? "")")
    }
}
extension TextfieldTutorialViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("Debug: Return Key Tapped... ")
       return true
    }
    func textFieldDidBeginEditing(_ textField: UITextField){
        print("Debug: Did Begin Edithing... ")
    }
    func textFieldDidEndEditing(_ textField: UITextField){
        print("Debug: Did Begin ending... ")
    }
}
#Preview {
    TextfieldTutorialViewController()
}
