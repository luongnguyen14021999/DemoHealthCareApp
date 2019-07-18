//
//  NotificationViewController.swift
//  HealthCareApp
//
//  Created by Admin on 18/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class NotificationViewController: BaseViewController {

    private let labelRegister: UILabel = {
       let label = UILabel()
       label.text = "Đăng kí thành công"
       label.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
       return label
    }()
    
    private let logoImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = Source.Images.logoView
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private let backButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = Theme.shared.buttonColor
        button.layer.cornerRadius = Dimension.shared.HeightButton / 2
        button.setTitle(Source.Title.SignInAndSignUp.backButton, for: .normal)
        button.setTitleColor(Theme.shared.backgroundColor, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: Dimension.shared.captionFontSize_12)
        button.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: View LifeCycle
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func initialize() {
        super.initialize()
        setupViewLogoImageView()
        setupViewLabelRegisterView()
        setupViewBackButton()
    }
    
    // UIActions
    
    @objc func backButtonTapped() {
        navigationController?.popToRootViewController(animated: true)
    }
    
    private func setupViewLogoImageView() {
        view.addSubview(logoImage)
        logoImage.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(Dimension.shared.largeHorizontalMargin_200)
            make.centerX.equalToSuperview()
        }
    }
    private func setupViewLabelRegisterView() {
       view.addSubview(labelRegister)
        labelRegister.snp.makeConstraints { (make) in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(30)
            make.height.equalTo(Dimension.shared.HeightLabel)
            make.width.equalTo(Dimension.shared.WidthLabel)
        }
    }
    private func setupViewBackButton()  {
        view.addSubview(backButton)
        backButton.snp.makeConstraints { (make) in
            make.width.equalTo(Dimension.shared.WidthButton1)
            make.height.equalTo(Dimension.shared.HeightButton)
            make.centerX.equalToSuperview()
            make.top.equalTo(labelRegister.snp.bottom).offset(Dimension.shared.largeHorizontalMargin_50)
        }
    }

}
