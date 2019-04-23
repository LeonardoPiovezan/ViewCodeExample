//
//  Button.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 21/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

class ButtonFactory {
    static func getButtonFor(style: ButtonStyle) -> UIButton {
        switch style {
        case .main:
            return MainButton(frame: CGRect.zero)
        case .secondary:
            return SecondaryButton(frame: CGRect.zero)
        }
    }
}
