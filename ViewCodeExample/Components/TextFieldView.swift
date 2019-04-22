//
//  TextFieldView.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 21/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

final class TextFieldView: UIView {

    private lazy var titleLabel: Label = {
        return Label(style: .title)
    }()

    private lazy var textField: UITextField = {
        return UITextField(frame: CGRect.zero)
    }()

    var title: String = "" {
        didSet {
            self.titleLabel.text = title
        }
    }

    var placeholder: String = "" {
        didSet {
            self.textField.placeholder = placeholder
        }
    }

    var text: String? {
        get {
            return self.textField.text
        }
    }

    init(title: String = "",
         placeholder: String = "") {
        self.title = title
        self.placeholder = placeholder
        super.init(frame: CGRect.zero)
        self.configureView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension TextFieldView: CodeView {
    func configureViewHierarchy() {
        self.addSubview(self.titleLabel)
        self.addSubview(self.textField)
    }

    func configureConstraints() {
        self.titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
        }

        self.textField.snp.makeConstraints {[unowned self] make in
            make.top.equalTo(self.titleLabel.snp.bottom)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
    }

    func configureAdditionalConfiguration() {
        self.titleLabel.text = self.title
        self.textField.placeholder = self.placeholder
    }
}
