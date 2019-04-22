//
//  LabelDescriptor.swift
//  Maps
//
//  Created by Leonardo Piovezan on 13/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

protocol LabelDescriptor {
    var font: UIFont { get }
    var textColor: UIColor { get }
    var numberOfLines: Int { get }
    var alignment: NSTextAlignment { get }
}

extension LabelDescriptor {
    var numberOfLines: Int {
        return 0
    }

    var alignment: NSTextAlignment {
        return .left
    }
}
