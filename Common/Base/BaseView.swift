//
//  BaseView.swift
//  HealthCareApp
//
//  Created by Admin on 17/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit

class BaseView: UIView, ReusableView {
   
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public func initialize() {
        
    }
    
}
