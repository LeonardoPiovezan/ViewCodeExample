//
//  CustomViewController.swift
//  Maps
//
//  Created by Leonardo Piovezan on 13/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

class CustomViewController<CustomView: UIView>: UIViewController {
    var customView: CustomView! {
        return self.view as? CustomView
    }

    override func loadView() {
        self.view = CustomView()
    }
}
