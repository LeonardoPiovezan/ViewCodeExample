//
//  Label.swift
//  Maps
//
//  Created by Leonardo Piovezan on 13/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

class Label: UILabel {
    required init(style: LabelStyle) {
        super.init(frame: CGRect.zero)
        let descriptor = style.descriptor
        self.setPropertiesWith(descriptor: descriptor)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setPropertiesWith(descriptor: LabelDescriptor) {
        self.font = descriptor.font
        self.numberOfLines = descriptor.numberOfLines
        self.textAlignment = descriptor.alignment
        self.textColor = descriptor.textColor
    }
}
