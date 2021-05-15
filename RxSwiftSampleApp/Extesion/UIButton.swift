//
//  UIButton.swift
//  RxSwiftSampleApp
//
//  Created by hideto c. on 2021/05/15.
//

import UIKit

extension UIButton {
    
    func createCardInfoButton() -> UIButton {
        self.setImage(UIImage(systemName: "info.circle.fill")?.resize(size: .init(width: 40, height: 40)), for: .normal)
        self.tintColor = .white
        self.imageView?.contentMode = .scaleAspectFill
        return self
    }
}
