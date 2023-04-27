//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Davit Margaryan on 22.04.23.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}
