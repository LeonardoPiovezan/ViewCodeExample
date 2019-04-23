//
//  MainButton.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 21/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

class MainButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configureView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureView() {
        self.layer.cornerRadius = 10
        self.backgroundColor = Style.Colors.mainAppColor
        self.titleLabel?.font = Style.Fonts.getMainFontWith(size: 17)
    }
}
