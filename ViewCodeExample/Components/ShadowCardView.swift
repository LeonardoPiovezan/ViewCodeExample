//
//  ShadowCardView.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 21/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

class ShadowCardView: UIView {

    init() {
        super.init(frame: CGRect.zero)
        self.configureShadow()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureShadow() {
        self.layer.cornerRadius = 3.0
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOpacity = 0.3
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowRadius = 4
        self.layer.shouldRasterize = false
        self.clipsToBounds = false
    }
}
