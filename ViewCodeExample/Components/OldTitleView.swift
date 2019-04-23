//
//  OldTitleView.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 23/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit
final class OldTitleView: UIView {
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 17)
        label.textColor = .black
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()

    lazy var subtitleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .gray
        label.numberOfLines = 0
        label.textAlignment = .left
        return label
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: CGRect.zero)
        stackView.axis = .vertical
        return stackView
    }()

    init() {
        super.init(frame: CGRect.zero)
        self.configureView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension OldTitleView: CodeView {
    func configureViewHierarchy() {
        self.addSubview(self.stackView)
        self.stackView.addArrangedSubview(self.titleLabel)
        self.stackView.addArrangedSubview(self.subtitleLabel)
    }

    func configureConstraints() {
        self.stackView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }

    func configureAdditionalConfiguration() {}
}
