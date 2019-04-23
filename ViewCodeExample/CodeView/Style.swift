//
//  Style.swift
//  Maps
//
//  Created by Leonardo Piovezan on 13/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import Foundation
import UIKit

struct Style {
    struct Colors {
        static let mainAppColor: UIColor = .purple
        static let purple: UIColor = .purple
        static let blue: UIColor = .blue
        static let gray: UIColor = .gray
        static let white: UIColor = .white
    }

    struct Margins {
        static let smallMargin: CGFloat = 8
        static let mediumMargin: CGFloat = 16
        static let largeMargin: CGFloat = 24
    }

    struct Fonts {
        static func getMainFontWith(size: CGFloat) -> UIFont {
//            return UIFont(name: "TamilSangamMN", size: size)!
            return UIFont.systemFont(ofSize: size)
        }
    }
}
