//
//  BottomControlView.swift
//  RxSwiftSampleApp
//
//  Created by hideto c. on 2021/05/07.
//

import UIKit

class BottomControlView: UIView {
    
    let ballView = BottomButtonView(frame: .zero, width: 50, imageName: "ball")
    let dribbleView = BottomButtonView(frame: .zero, width: 60, imageName: "dribble")
    let groundView = BottomButtonView(frame: .zero, width: 50, imageName: "ground")
    let shoesView = BottomButtonView(frame: .zero, width: 60, imageName: "shoes")
    let stadiumView = BottomButtonView(frame: .zero, width: 50, imageName: "stadium")
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let baseStackView = UIStackView(arrangedSubviews: [ballView, dribbleView, groundView, shoesView, stadiumView])
        baseStackView.axis = .horizontal
        baseStackView.distribution = .fillEqually
        baseStackView.spacing = 10
        baseStackView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(baseStackView)
        
        [baseStackView.topAnchor.constraint(equalTo: topAnchor),
         baseStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
         baseStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
         baseStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -10)
        ].forEach{ $0.isActive = true }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class BottomButtonView: UIView {
    
    var button: BottomButton?
    
    init(frame: CGRect, width: CGFloat, imageName: String) {
        super.init(frame: frame)
        
        button = BottomButton(type: .custom)
        button?.setImage(UIImage(named: imageName)?.resize(size: .init(width: width * 0.6, height: width * 0.6)), for: .normal)
//        button?.setTitle("tap", for: .normal)
        button?.translatesAutoresizingMaskIntoConstraints = false
        button?.backgroundColor = .white
        button?.layer.cornerRadius =  width / 2
        
        button?.layer.shadowOffset = .init(width: 1.5, height: 2)
        button?.layer.shadowColor = UIColor.black.cgColor
        button?.layer.shadowOpacity = 0.3
        button?.layer.shadowRadius = 15
        
        addSubview(button!)
        
        button?.anchor(centerY: centerYAnchor, centerX: centerXAnchor, width: width, height: width)
        
//        [button?.centerYAnchor.constraint(equalTo: centerYAnchor),
//         button?.centerXAnchor.constraint(equalTo: centerXAnchor),
//         button?.widthAnchor.constraint(equalToConstant: width),
//         button?.heightAnchor.constraint(equalToConstant: width)
//        ].forEach { $0?.isActive = true }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class BottomButton: UIButton {
    
    override var isHighlighted: Bool {
        didSet {
            if isHighlighted {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: []) {
                    self.transform = .init(scaleX: 0.8, y: 0.8)
                    self.layoutIfNeeded()
                }
            } else {
                UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0.7, options: []) {
                    self.transform = .identity
                    self.layoutIfNeeded()
                }
            }
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
