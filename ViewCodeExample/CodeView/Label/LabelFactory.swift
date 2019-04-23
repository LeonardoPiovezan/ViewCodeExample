//
//  LabelFactory.swift
//  
//
//  Created by Leonardo Piovezan on 23/04/19.
//

import UIKit

final class LabelFactory {
    static func getLabelFor(style: LabelStyle) -> UILabel {
        return Label(style: style)
    }
}
