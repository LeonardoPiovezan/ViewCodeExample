//
//  CodeView.swift
//  Maps
//
//  Created by Leonardo Piovezan on 13/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

protocol CodeView {
    func configureViewHierarchy()
    func configureConstraints()
    func configureAdditionalConfiguration()
    func configureView()
}

extension CodeView {
    func configureView() {
        self.configureViewHierarchy()
        self.configureConstraints()
        self.configureAdditionalConfiguration()
    }
}
