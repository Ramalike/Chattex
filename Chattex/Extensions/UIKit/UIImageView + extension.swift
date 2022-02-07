//
//  UIImageView + extension.swift
//  Chattex
//
//  Created by Рамиль Мухаррямов on 06.02.2022.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
