//
//  SignInViewController.swift
//  HealthCareApp
//
//  Created by Admin on 17/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class SignInViewController: BaseViewController {
  
    //MARK: UI ELements
    
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Source.Images.logoView
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private let patientInputView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.patientCodeTitle
        view.placeHolder = Source.Title.SignInAndSignUp.patientCodePlaceHolder
        return view
    }()
    
    private let passwordInputView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.passwordTitle
        view.placeHolder = Source.Title.SignInAndSignUp.passwordPlaceholder
        view.isSecureTextEntry = true
        return view
    }()
    
    private let signInButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.buttonColor
        button.layer.cornerRadius = Dimension.shared.HeightButton / 2
        button.setTitle(Source.Title.SignInAndSignUp.signIn, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize_12)
        button.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        return button
    }()

    private let signUpButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = Dimension.shared.HeightButton / 2
        button.setTitle(Source.Title.SignInAndSignUp.signUp, for: .normal)
        button.setTitleColor(Theme.shared.buttonColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize_11)
        button.addTarget(self, action: #selector(signUpButtontapped), for: .touchUpInside)
        return button
    }()
      
    //MARK: View LifeCycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.navigationBar.isHidden = false
    }
   
    override func initialize() {
        super.initialize()
        setupViewLogoImageView()
        setupViewPatientInputView()
        setupViewPasswordInputView()
        setupViewSignInButton()
        setupViewSignUpButton()
    }
    
   
    //MARK: UI Action
    
    @objc func signInButtonTapped() {
    }
    
    @objc func signUpButtontapped() {
        navigationController?.pushViewController(SignUpViewController(), animated: true)
    }
    

    
    //MARK: SetupView
    
    private func setupViewLogoImageView() {
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_80)
            make.centerX.equalToSuperview()
        }
    }
    private func setupViewPatientInputView() {
        view.addSubview(patientInputView)
        patientInputView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_42)
            make.width.equalTo(Dimension.shared.WidthTextfield)
            make.top.equalTo(logoImage.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_50)
        }
    }

    private func setupViewPasswordInputView() {
        view.addSubview(passwordInputView)
        passwordInputView.snp.makeConstraints { (make) in
            make.width.left.equalTo(patientInputView)
            make.top.equalTo(patientInputView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
        }
    }
    
    private func setupViewSignInButton() {
        view.addSubview(signInButton)
        signInButton.snp.makeConstraints { (make) in
            make.width.equalTo(Dimension.shared.WidthButton)
            make.height.equalTo(Dimension.shared.HeightButton)
            make.centerX.equalToSuperview()
            make.top.equalTo(passwordInputView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
        }
    }

    private func setupViewSignUpButton() {
        view.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { (make) in
            make.centerX.width.height.equalTo(signInButton)
            make.top.equalTo(signInButton.snp.bottom).offset(Dimension.shared.mediumHorizontalMargin_12)
        }
    }
    

}
