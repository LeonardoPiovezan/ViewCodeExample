//
//  LabelStyle.swift
//  Maps
//
//  Created by Leonardo Piovezan on 13/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import Foundation
import UIKit

enum LabelStyle {
    case title
    case subTitle
    case custom(descriptor: LabelDescriptor)

    var descriptor: LabelDescriptor {
        switch self {
        case .title:
            return TitleDescriptor()
        case .subTitle:
            return SubTitleDescriptor()
        case .custom(let descriptor):
            return descriptor
        }
    }
}
