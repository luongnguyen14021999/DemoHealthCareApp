//
//  BaseViewController .swift
//  HealthCareApp
//
//  Created by Admin on 17/7/19.
//  Copyright © 2019 Admin. All rights reserved.
//

import UIKit
protocol ReusableView {
   func initialize()
}
class BaseViewController: UIViewController, ReusableView {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        initialize()
    }
    
    public func initialize() {
      
    }
}
