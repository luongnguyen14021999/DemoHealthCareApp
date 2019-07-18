//
//  SignUpViewController.swift
//  HealthCareApp
//
//  Created by Admin on 17/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
class SignUpViewController: BaseViewController {
   
    //MARK: UIelements
    
    private let patientCodeView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.patientCode
        view.placeHolder = Source.Title.SignInAndSignUp.patientCodeSignUpPlaceHolder
        return view
    }()
    
    private let fullNameView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.fullName
        view.placeHolder = Source.Title.SignInAndSignUp.fullName
        return view
    }()
    
    private let dateOfBirthView: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.dateOfBirth
        view.placeHolder = Source.Title.SignInAndSignUp.placeHolderDOB
        return view
    }()
    private let address1View: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.title = Source.Title.SignInAndSignUp.labelAddress
        view.placeHolder = Source.Title.SignInAndSignUp.placeHolderAddress1
        return view
    }()
    private let address2View: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.placeHolder = Source.Title.SignInAndSignUp.placeHolderAddress2
        return view
    }()
    private let address3View: TextFieldWithTitle = {
        let view = TextFieldWithTitle()
        view.placeHolder = Source.Title.SignInAndSignUp.placeHolderAddress3
        return view
    }()
    private let nextButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.buttonColor
        button.layer.cornerRadius = Dimension.shared.HeightButton / 2
        button.setTitle(Source.Title.SignInAndSignUp.nextButton, for: .normal)
        button.setTitleColor(Theme.shared.backgroundColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize_12)
        button.addTarget(self, action: #selector(nextButtontapped), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: View LifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let backButonItem = UIBarButtonItem(image: Source.Images.backButton,
                                            style: .plain, target: self,
                                            action: #selector(backButtonTapped))
        
        let backTitleItem = UIBarButtonItem(title: Source.Title.SignInAndSignUp.signUp,
                                            style: .plain, target: self,
                                            action: #selector(backButtonTapped))
        
        navigationItem.leftBarButtonItems = [backButonItem, backTitleItem]
        
        
        
        let logoItem = UIBarButtonItem(image: Source.Images.logoView, style: .plain, target: nil, action: nil)
        navigationItem.rightBarButtonItem = logoItem
    }
    
    
    override func initialize() {
       setupViewPatientCodeView()
       setupViewFullNameView()
       setupViewDateOfBirthView()
       setupViewAddress1View()
       setupViewAddress2View()
       setupViewAddress3View()
       setupViewNextButton()
    }
    
    // UIActions
    
    @objc func backButtonTapped() {
       navigationController?.popViewController(animated: true)
    }
    
    @objc func nextButtontapped() {
        navigationController?.pushViewController(SignUpViewController1(), animated: true)
    }
    
    //MARK: SetupView
    
    private func setupViewPatientCodeView() {
        view.addSubview(patientCodeView)
        patientCodeView.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_100)
            make.width.equalTo(Dimension.shared.widthLine)
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_42)
        }
    }
    
    private func setupViewFullNameView() {
        view.addSubview(fullNameView)
        fullNameView.snp.makeConstraints { (make) in
            make.left.right.equalTo(patientCodeView)
            make.top.equalTo(patientCodeView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
        }
    }
    private func setupViewDateOfBirthView() {
        view.addSubview(dateOfBirthView)
        dateOfBirthView.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_42)
            make.top.equalTo(fullNameView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
        }
    }
    private func setupViewAddress1View() {
        view.addSubview(address1View)
        address1View.snp.makeConstraints { (make) in
            make.left.equalToSuperview().offset(Dimension.shared.largeVerticalMargin_42)
            make.top.equalTo(dateOfBirthView.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
        }
    }
    private func setupViewAddress2View() {
        view.addSubview(address2View)
        address2View.snp.makeConstraints { (make) in
            make.right.equalToSuperview().offset(Dimension.shared.largeVerticalMargin42)
            make.bottom.equalTo(address1View.snp.bottom)
        }
    }
    private func setupViewAddress3View() {
        view.addSubview(address3View)
        address3View.snp.makeConstraints { (make) in
            make.left.left.equalTo(address1View)
            make.top.equalTo(address2View.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_40)
            make.right.right.equalTo(address2View)
        }
    }
    private func setupViewNextButton()  {
        view.addSubview(nextButton)
        nextButton.snp.makeConstraints { (make) in
            make.width.equalTo(Dimension.shared.WidthButton1)
            make.height.equalTo(Dimension.shared.HeightButton)
            make.centerX.equalToSuperview()
            make.top.equalTo(address3View.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_50)
        }
    }

}


