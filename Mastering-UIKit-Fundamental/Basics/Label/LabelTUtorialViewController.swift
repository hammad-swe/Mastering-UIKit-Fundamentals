//
//  LabelTUtorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 20/11/2025.
//

import UIKit

class LabelTUtorialViewController: UIViewController {

    private var textlabel = UILabel()
    private var subitlelabel: UILabel = {
        let label = UILabel()
        label.text = "this is subtitle for UIKit course best ever"
        label.textColor = .gray
        return label
    }()
    override func viewDidLoad() {
        super.viewDidLoad()

        textlabel.text = "Hello world"
        textlabel.font = UIFont.boldSystemFont(ofSize: 20)
        
        view.addSubview(textlabel)
        textlabel.translatesAutoresizingMaskIntoConstraints = false
        textlabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        textlabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        view.addSubview(subitlelabel)
        subitlelabel.translatesAutoresizingMaskIntoConstraints = false
        subitlelabel.topAnchor.constraint(equalTo: textlabel.bottomAnchor, constant: 8).isActive = true
        subitlelabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
}

#Preview(){
    LabelTUtorialViewController()
}
