//
//  ScrollViewTutorialViewController.swift
//  Mastering-UIKit-Fundamental
//
//  Created by Hammad Ali on 22/11/2025.
//

import UIKit

class ScrollViewTutorialViewController: UIViewController {
    
    private var scrollView = UIScrollView()
    private var stackview: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 16
        return stack
    }()
    
   private let rectHeight: CGFloat = 200
    private let numbersOfRects = 20
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 1 ..< numbersOfRects {
            let rect = createRectangle()
            stackview.addArrangedSubview(rect)
        }
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        scrollView.addSubview(stackview)
        stackview.translatesAutoresizingMaskIntoConstraints = false
        stackview.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
        scrollView.contentSize.height = (rectHeight * CGFloat(numbersOfRects)) + 64
        
    }
    private func createRectangle() -> UIView{
        let view = UIView()
        view.widthAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.heightAnchor.constraint(equalToConstant: rectHeight).isActive = true
        view.backgroundColor = .systemGreen
        view.layer.cornerRadius = 16
//        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
extension ScrollViewTutorialViewController : UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print("Debug: scroll offset \(scrollView.contentOffset)")
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView){
        print("Debug: scroll offset did end decl...")
    }
    
    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool){
        print("Debug: scroll offset did end drag...")
    }
}
#Preview{
    ScrollViewTutorialViewController()
}

//import UIKit
//
//class ScrollViewTutorialViewController: UIViewController {
//
//    private let scrollView = UIScrollView()
//    
//    private let stackView: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.spacing = 16
//        return stack
//    }()
//    
//    private let rectHeight: CGFloat = 100
//    private let rectWidth : CGFloat = 00
//    private let numbersOfRects = 20
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        view.backgroundColor = .systemBackground
//        
//        setupScrollView()
//        setupStackView()
//        addRectangles()
//    }
//    
//    private func setupScrollView() {
//        view.addSubview(scrollView)
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
//            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
//        ])
//    }
//    
//    private func setupStackView() {
//        scrollView.addSubview(stackView)
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
//            stackView.leftAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leftAnchor),
//            stackView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
//            stackView.rightAnchor.constraint(equalTo: scrollView.contentLayoutGuide.rightAnchor),
//            
//            // Important: match width to scroll view
//            stackView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor)
//        ])
//    }
//    
//    private func addRectangles() {
//        for _ in 1..<numbersOfRects {
//            stackView.addArrangedSubview(createRectangle())
//        }
//    }
//    
//    private func createRectangle() -> UIView {
//        let v = UIView()
//        v.backgroundColor = .systemRed
//        v.layer.cornerRadius = 16
//        v.translatesAutoresizingMaskIntoConstraints = false
//        
//        NSLayoutConstraint.activate([
//            v.heightAnchor.constraint(equalToConstant: rectHeight),
//            v.widthAnchor.constraint(equalToConstant: rectWidth)
//            
//        ])
//        
//        return v
//    }
//}
//
//#Preview {
//    ScrollViewTutorialViewController()
//}
