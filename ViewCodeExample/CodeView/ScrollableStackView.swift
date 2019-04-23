//
//  ScrollableStackView.swift
//  \\
//
//  Created by Leonardo Augusto Piovezan on 07/12/18.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit
import SnapKit

class ScrollableStackView: UIView {
    
    lazy var scrollView: UIScrollView = {
        let scrollView = UIScrollView(frame: CGRect.zero)
        return scrollView
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: CGRect.zero)
        stackView.axis = .vertical
        stackView.spacing = 24
        return stackView
    }()
    
    var orientation: NSLayoutConstraint.Axis {
        didSet {
            self.stackView.axis = self.orientation
        }
    }
    
    var spacing: CGFloat {
        didSet {
            self.stackView.spacing = spacing
        }
    }
    
    init(orientation: NSLayoutConstraint.Axis = .vertical,
         spacing: CGFloat = 0) {
        self.orientation = orientation
        self.spacing = spacing
        super.init(frame: CGRect.zero)
        self.configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        self.orientation = .vertical
        self.spacing = 0
        super.init(coder: aDecoder)
        self.configureView()
    }
    
    func addArrangedSubview(_ view: UIView) {
        self.stackView.addArrangedSubview(view)
    }
    
}

extension ScrollableStackView: CodeView {
    func configureViewHierarchy() {
        self.addSubview(self.scrollView)
        self.scrollView.addSubview(self.stackView)
    }
    
    func configureConstraints() {
        self.scrollView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        self.stackView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(16)
            make.trailing.equalToSuperview().inset(16)
            make.top.equalToSuperview().offset(24)
            make.bottom.equalToSuperview()
            make.width.equalTo(self.scrollView).multipliedBy(0.9)
        }
    }
    
    func configureAdditionalConfiguration() {
        
    }
}
