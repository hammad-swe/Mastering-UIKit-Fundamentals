//
//  ViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 19/11/2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greeting: UIView!
    
    @IBOutlet var geetbtn: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .systemGreen
        greetuser("Hammd Ali")
        
    }
    func greetuser(_ name:String){
//        greeting.textInputMode = "Hello \(name)!"
//
//        
    }

}

