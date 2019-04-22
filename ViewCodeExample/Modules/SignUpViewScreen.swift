//
//  SignUpViewScreen.swift
//  ViewCodeExample
//
//  Created by Leonardo Piovezan on 20/04/19.
//  Copyright © 2019 Leonardo Piovezan. All rights reserved.
//

import UIKit

final class SignUpViewScreen: UIView {
    lazy var headerView: UIView = {
        return UIView()
    }()

    lazy var scrollableView: ScrollableStackView = {
        return ScrollableStackView(orientation: NSLayoutConstraint.Axis.vertical, spacing: 8)
    }()

    lazy var titleView: TitleView = {
        return TitleView()
    }()

    lazy var textFieldView: TextFieldView = {
        return TextFieldView()
    }()

    lazy var nameTextView: TextFieldView = {
        return TextFieldView(title: "Nome", placeholder: "Digite seu nome")
    }()

    lazy var passwordTextView: TextFieldView = {
        return TextFieldView(title: "Senha", placeholder: "Digite sua senha")
    }()
    lazy var button: UIButton = {
        return Button.getButtonFor(style: .secondary)
    }()

    init() {
        super.init(frame: CGRect.zero)
        self.configureView()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SignUpViewScreen: CodeView {
    func configureViewHierarchy() {
        self.addSubview(self.scrollableView)
        self.scrollableView.addArrangedSubview(self.headerView)
        self.scrollableView.addArrangedSubview(self.nameTextView)
//        self.scrollableView.addArrangedSubview(self.titleView)
//        self.scrollableView.addArrangedSubview(self.textFieldView)
        self.scrollableView.addArrangedSubview(self.passwordTextView)
        self.scrollableView.addArrangedSubview(self.button)
    }

    func configureConstraints() {
        self.scrollableView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }

        self.headerView.snp.makeConstraints { make in
            let screenHeight = UIScreen.main.bounds.height
            make.height.equalTo(screenHeight*0.3)
        }
    }

    func configureAdditionalConfiguration() {
        self.scrollableView.backgroundColor = Style.Colors.gray
        self.button.setTitle("Criar Conta", for: .normal)

    }
}
