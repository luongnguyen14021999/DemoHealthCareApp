//
//  SignUpViewController1.swift
//  HealthCareApp
//
//  Created by Admin on 18/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class SignUpViewController1: BaseViewController {

    
    private let passwordTitleView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.passwordTitle
        view.placeHolder = Source.Title.SignInAndSignUp.passwordPlaceholder
        return view
    }()
    
    private let repeatpasswordPlaceholderView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.repeatpasswordPlaceholder
        view.placeHolder = Source.Title.SignInAndSignUp.repeatpasswordPlaceholder
        return view
    }()
    private let completeButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.buttonColor
        button.layer.cornerRadius = Dimension.shared.HeightButton / 2
        button.setTitle(Source.Title.SignInAndSignUp.completeButton, for: .normal)
        button.setTitleColor(Theme.shared.backgroundColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize_12)
        button.addTarget(self, action: #selector(completeButtontapped), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: View LifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let backButonItem1 = UIBarButtonItem(image: Source.Images.backButton,
                                            style: .plain, target: self,
                                            action: #selector(backButtonTapped))
        
        let backTitleItem1 = UIBarButtonItem(title: Source.Title.SignInAndSignUp.signUp,
                                            style: .plain, target: self,
                                            action: #selector(backButtonTapped))
        
        navigationItem.leftBarButtonItems = [backButonItem1, backTitleItem1]
        
        
        
        let logoItem1 = UIBarButtonItem(image: Source.Images.logoView, style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = logoItem1
    }
    
    
    
    override func initialize() {
        super.initialize()
        setupViewPasswordTitleView()
        setupViewRepeatpasswordPlaceholder()
        setupViewCompleteButton()
    }
    // UIActions
    
    @objc func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc func completeButtontapped() {
        navigationController?.pushViewController(NotificationViewController(), animated: true)
    }
    // setupViews
    
    private func setupViewPasswordTitleView() {
        view.addSubview(passwordTitleView)
        passwordTitleView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_100)
            make.width.equalTo(Dimension.shared.widthLine)
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_42)
        }
    }
    private func setupViewRepeatpasswordPlaceholder() {
        view.addSubview(repeatpasswordPlaceholderView)
        repeatpasswordPlaceholderView.snp.makeConstraints { (make) in
            make.left.left.equalTo(passwordTitleView)
            make.top.equalTo(passwordTitleView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
            make.width.equalTo(passwordTitleView)
        }
    }
    private func setupViewCompleteButton()  {
        view.addSubview(completeButton)
        completeButton.snp.makeConstraints { (make) in
            make.width.equalTo(Dimension.shared.WidthButton1)
            make.height.equalTo(Dimension.shared.HeightButton)
            make.centerX.equalToSuperview()
            make.top.equalTo(repeatpasswordPlaceholderView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_50)
        }
    }
}
