//
//  ActionButtonView.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 22/11/2025.
//

import UIKit

protocol ActionButtonViewDelagate: AnyObject {
    func onprimaryTap()
    func onsecondaryTap()
}

class ActionButtonView: UIView {

    weak var delagate: ActionButtonViewDelagate?
    private var primarybtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("primary Action", for: .normal)
        btn.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .systemBlue
        btn.layer.cornerRadius = 10
        return btn
    }()
    
    private var secandarybtn: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("secondary Action", for: .normal)
        btn.layer.borderColor = (UIColor.systemBlue as! CGColor)
        btn.translatesAutoresizingMaskIntoConstraints = false
        
        return btn
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        
        addSubview(primarybtn)
        primarybtn.widthAnchor.constraint(equalToConstant: 200).isActive = true
        primarybtn.heightAnchor.constraint(equalToConstant: 44).isActive = true
        primarybtn.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        primarybtn.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        addSubview(secandarybtn)
        secandarybtn.topAnchor.constraint(equalTo: primarybtn.bottomAnchor, constant: 8).isActive = true
        secandarybtn.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        
        primarybtn.addTarget(self, action: #selector(handlePrimarybtnTap), for: .touchUpInside)
       secandarybtn.addTarget(self, action: #selector(handleSecondarybtnTap), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    @objc func handlePrimarybtnTap(){
        print("DEBUG: primary button tapped in view ...")
        delagate?.onprimaryTap()
    }
    
    @objc func handleSecondarybtnTap(){
        print("DEBUG: secondary button tapped in view ...")
        delagate?.onsecondaryTap()
    }
}
