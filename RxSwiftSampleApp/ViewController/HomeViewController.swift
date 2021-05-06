//
//  HomeViewController.swift
//  RxSwiftSampleApp
//
//  Created by hideto c. on 2021/05/06.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let view1 = UIView()
        view1.backgroundColor = .yellow
        
        let view2 = UIView()
        view2.backgroundColor = .blue
        
        let BottomView = BottomControlView()
        
        let stackView = UIStackView(arrangedSubviews: [view1, view2, BottomView])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        
        self.view.addSubview(stackView)
        
        [view1.heightAnchor.constraint(equalToConstant: 100),
         BottomView.heightAnchor.constraint(equalToConstant: 120),
         
         stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
         stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
         stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
         stackView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ].forEach{ $0 .isActive = true }
    }


}

