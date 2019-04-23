//
//  TitleView.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 20/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

final class TitleView: UIView {
    private lazy var titleLabel: UILabel = {
        return LabelFactory.getLabelFor(style: .title)
    }()

    private lazy var subtitleLabel: UILabel = {
        return LabelFactory.getLabelFor(style: .subtitle)
    }()

    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(frame: CGRect.zero)
        stackView.axis = .vertical
        return stackView
    }()

    var title: String = "" {
        didSet {
            self.titleLabel.text = title
        }
    }

    var subtitle: String = "" {
        didSet {
            self.subtitleLabel.text = subtitle
        }
    }

    init() {
        super.init(frame: CGRect.zero)
        self.configureView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension TitleView: CodeView {
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

    func configureAdditionalConfiguration() {
    }
}
