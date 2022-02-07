//
//  Label + Extension.swift
//  Chattex
//
//  Created by Рамиль Мухаррямов on 06.02.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont? = .avenir20()) {
        self.init()
        self.text = text
    }
}
