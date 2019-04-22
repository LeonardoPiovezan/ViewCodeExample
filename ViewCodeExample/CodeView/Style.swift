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
        static let purple: UIColor = .red
        static let blue: UIColor = .blue
        static let gray: UIColor = .gray
    }

    struct Margins {
        static let smallMargin: CGFloat = 8
    }

    struct Dimensions {
        
    }
    struct Fonts {
        lazy var mainFont: UIFont = {
            return UIFont.systemFont(ofSize: self.fontSize)
        }()

        private var fontSize: CGFloat = 0
        init(fontSize: CGFloat) {
            self.fontSize = fontSize
        }
    }
}
