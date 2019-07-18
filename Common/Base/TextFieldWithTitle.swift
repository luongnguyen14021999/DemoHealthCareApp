//
//  TextFieldWithTitle.swift
//  HealthCareApp
//
//  Created by Admin on 18/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class TextFieldWithTitle: BaseView {
    
    //MARK: Properties
    
    public var title: String? {
        didSet {
            titleLabel.text = title
        }
    }
    
    public var placeHolder: String? {
        didSet {
            textField.placeholder = placeHolder
        }
    }
    
    public var isSecureTextEntry: Bool = false {
        didSet {
            textField.isSecureTextEntry = isSecureTextEntry
        }
    }
    
    
    //MARK: UI Elements
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = Theme.shared.primaryColor
        return label
    }()
    
    private let textField: UITextField = {
        let textField = UITextField()
        textField.textColor = Theme.shared.primaryColor
        return textField
    }()
    
    private let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = Theme.shared.lineColor
        return view
    }()
    
    override public func initialize() {
        setupViewTitleLabel()
        setupViewTextField()
        setupViewLineView()
    }
    
    //MARK: SetupView
    
    private func setupViewTitleLabel() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.left.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    private func setupViewTextField() {
        addSubview(textField)
        textField.snp.makeConstraints { (make) in
            make.left.equalTo(titleLabel)
            make.width.equalToSuperview()
            make.height.equalTo(Dimension.shared.HeightTextField)
            make.top.equalTo(titleLabel.snp.bottom).offset(Dimension.shared.mediumVerticalMargin_8)
        }
    }
    
    private func setupViewLineView() {
        addSubview(lineView)
        lineView.snp.makeConstraints { (make) in
            make.width.equalTo(textField)
            make.height.equalTo(Dimension.shared.heightLine)
            make.left.equalTo(titleLabel)
            make.top.equalTo(textField.snp.bottom)
            make.bottom.equalToSuperview()
        }
    }
    
}
