//
//  UIColorExtesion.swift
//  RxSwiftSampleApp
//
//  Created by hideto c. on 2021/05/08.
//

import UIKit

extension UIColor {
    
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return .init(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1)
    }
    
}
